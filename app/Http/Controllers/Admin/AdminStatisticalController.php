<?php

namespace App\Http\Controllers\Admin;

use App\HelpersClass\Date;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Warehouse;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\Product;

class AdminStatisticalController extends Controller
{
	public function index()
    {
    	if (!check_admin()) return redirect()->route('get.admin.index');

        //Tổng hđơn hàng
        $totalTransactions = \DB::table('transactions')->select('id')->count();

        //Tổng thành viên
        $totalTransactions2 = \DB::table('transactions')->where('tst_status', 1)->count();

        // Tông sản phẩm
        $totalProducts = \DB::table('products')->select('id')->count();

        // Tông đánh giá
        $totalRatings = \DB::table('ratings')->select('id')->count();

        // Danh sách đơn hàng mới
        $transactions = Transaction::where('tst_status', 1)
                            ->orderBy('created_at', 'asc')
                            ->limit(10)
                            ->get();


        // Doanh thu ngày
		$totalMoneyDay = Transaction::whereDay('created_at',date('d'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		$mondayLast = Carbon::now()->startOfWeek();
		$sundayFirst = Carbon::now()->endOfWeek();
		$totalMoneyWeed = Transaction::whereBetween('created_at',[$mondayLast,$sundayFirst])
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		// doanh thu thag
		$totalMoneyMonth = Transaction::whereMonth('created_at',date('m'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		// doanh thu nam
		$totalMoneyYear = Transaction::whereYear('created_at',date('Y'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

        $totalMoney = Transaction::where('tst_status',Transaction::STATUS_SUCCESS)
            ->sum('tst_total_money');


        $totalWarehouse = Warehouse::sum('w_price');
        $totalWarehouse = $totalMoney - $totalWarehouse;

        // Top sản phẩm xem nhiều
        $topViewProducts = Product::orderByDesc('pro_view')
            ->limit(10)
            ->get();

        // Top sản phẩm mua nhiều
        $topPayProducts = Product::orderByDesc('pro_pay')
            ->limit(10)
            ->get();

        // Top mua nhiều trong tháng
		$topProductBuyMonth = Order::with('product:id,pro_name,pro_avatar')->whereMonth('created_at',date('m'))
			->select(\DB::raw('sum(od_qty) as quantity'))
			->addSelect('od_product_id','od_price')
			->groupBy('od_product_id')
			->limit(20)
			->orderByDesc('quantity')
			->get();

        // Tiep nhan
        $transactionDefault = Transaction::where('tst_status',1)->select('id')->count();
        // dang van chuyen
        $transactionProcess = Transaction::where('tst_status',2)->select('id')->count();
        // Thành công
        $transactionSuccess = Transaction::where('tst_status',3)->select('id')->count();
        //Cancel
        $transactionCancel = Transaction::where('tst_status',-1)->select('id')->count();

        $statusTransaction = [
            [
                'Hoàn tất' , $transactionSuccess, false
            ],
            [
                'Đang vận chuyển' , $transactionProcess, false
            ],
            [
                'Tiếp nhận' , $transactionDefault, false
            ],
            [
                'Huỷ bỏ' , $transactionCancel, false
            ]
        ];

        $listDay = Date::getListDayInMonth();

        //Doanh thu theo tháng ứng với trạng thái đã xử lý
        $revenueTransactionMonth = Transaction::where('tst_status',3)
            ->whereMonth('created_at',date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        //Doanh thu theo tháng ứng với trạng thái tiếp nhận
        $revenueTransactionMonthDefault = Transaction::where('tst_status',1)
            ->whereMonth('created_at',date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        $arrRevenueTransactionMonth = [];
        $arrRevenueTransactionMonthDefault = [];
        foreach($listDay as $day) {
            $total = 0;
            foreach ($revenueTransactionMonth as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }

            $arrRevenueTransactionMonth[] = (int)$total;

            $total = 0;
            foreach ($revenueTransactionMonthDefault as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }
            $arrRevenueTransactionMonthDefault[] = (int)$total;
        }



        $viewData = [
            'totalTransactions'          => $totalTransactions,
            'totalTransactions2'                 => $totalTransactions2,
			'totalMoneyDay'				 => $totalMoneyDay,
			'totalMoneyWeed'		     => $totalMoneyWeed,
			'totalMoneyMonth'		     => $totalMoneyMonth,
			'totalMoneyYear'		     => $totalMoneyYear,
            'totalProducts'              => $totalProducts,
            'totalRatings'               => $totalRatings,
            'transactions'               => $transactions,
            'topViewProducts'            => $topViewProducts,
            'topPayProducts'             => $topPayProducts,
            'totalWarehouse'             => $totalWarehouse,
			'topProductBuyMonth'		 => $topProductBuyMonth,
            'statusTransaction'          => json_encode($statusTransaction),
            'listDay'                    => json_encode($listDay),
            'arrRevenueTransactionMonth' => json_encode($arrRevenueTransactionMonth),
            'arrRevenueTransactionMonthDefault' => json_encode($arrRevenueTransactionMonthDefault)
        ];

        return view('admin.statistical.index', $viewData);
    }
}
