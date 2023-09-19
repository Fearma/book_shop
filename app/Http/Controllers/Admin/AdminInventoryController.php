<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Export;
use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\Warehouse;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminInventoryController extends Controller
{
	/**
	 * Nhập kho
	 */
    public function getWarehousing()
	{
        $products = Product::all();

        $warehouses =  Warehouse::orderByDesc('id')
        ->paginate(20);


		$viewData = [
            'products' => $products,
			'warehouses' => $warehouses,
		];

		return view('admin.inventory.import', $viewData);
	}

	public function add()
    {
        $products = Product::all();
        return view('admin.inventory.import_add', compact('products'));
    }

    public function store(Request $request)
    {
        $data = $request->except('_token');
        Warehouse::create($data);

        // Update sản phẩm
        $product = Product::find($request->w_product_id);
        if ($product) {
            $product->pro_price_entry = $request->w_price;
            $product->pro_number += $request->w_qty;
            $product->updated_at = Carbon::now();
            $product->save();
        }
        return redirect()->route('admin.inventory.warehousing');
    }

    public function edit($id)
    {
        $warehouse = Warehouse::find($id);
        $products = Product::all();
        return view('admin.inventory.import_update', compact('products','warehouse'));
    }

    public function update(Request $request,$id)
    {
        $data = $request->except('_token');
        $warehouse = $warehouseOld = Warehouse::find($id);
        $warehouse->fill($data)->save();

        $product = Product::find($request->w_product_id);

        if ($product) {
            $product->pro_price_entry = $request->w_price;
            $product->pro_number += $request->w_qty - $warehouseOld->w_qty;
            $product->updated_at = Carbon::now();
            $product->save();

        }

        return redirect()->route('admin.inventory.warehousing');
    }

    public function delete(Request $request,$id)
    {
        Warehouse::find($id)->delete();
        return redirect()->route('admin.inventory.warehousing');
    }

	/**
	 * Xuất kho
	 */
	public function getOutOfStock(Request $request)
	{
        $inventoryExport = Order::with('product');

        if ($request->time) {
            $time = $this->getStartEndTime($request->time,[]);
            $inventoryExport->whereBetween('created_at', $time);
        }

        $inventoryExport = $inventoryExport->orderByDesc('id')
            ->paginate(20);

        $viewData = [
            'inventoryExport' => $inventoryExport,
            'query' => $request->query()
        ];

        return view('admin.inventory.export', $viewData);
//
//		$inventoryExport = Export::orderByDesc('id')
//            ->paginate(10);
//
//		$viewData = [
//			'inventoryExport' => $inventoryExport,
//		];
//
//		return view('admin.inventory.export', $viewData);
	}

	public function exportAdd()
    {
        $transactions = Transaction::all();
        return view('admin.inventory.export_add', compact('transactions'));
    }

    public function exportStore(Request $request)
    {
        $data = $request->except('_token');
        Export::create($data);
        return redirect()->route('admin.export.out_of_stock');
    }

    public function exportEdit($id)
    {
        $export = Export::find($id);
        $transactions = Transaction::all();
        return view('admin.inventory.export_update', compact('transactions','export'));
    }

    public function exportUpdate(Request $request,$id)
    {
        $data = $request->except('_token');
        $warehouse = Export::find($id);
        $warehouse->fill($data)->save();
        return redirect()->route('admin.export.out_of_stock');
    }

    public function exportDelete(Request $request,$id)
    {
        Export::find($id)->delete();
        return redirect()->route('admin.export.out_of_stock');
    }
}
