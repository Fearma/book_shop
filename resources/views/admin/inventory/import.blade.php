@extends('layouts.app_master_admin')
@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Kiểm nhập kho</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href=""> Nhập kho </a></li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<!-- Default box -->
	<div class="box">
		<div class="box-header with-border">
			<div class="box-title">
				<form class="form-inline">
					{{-- <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">--}}
					{{-- <input type="text" class="form-control" value="{{ Request::get('name') }}" name="name" placeholder="Name ...">--}}
					{{-- <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>--}}
					{{-- <button type="submit" name="export" value="true" class="btn btn-info">--}}
					{{-- <i class="fa fa-save"></i> Export--}}
					{{-- </button>--}}
					<a href="{{  route('admin.warehousing.add') }}">Thêm mới</a>
				</form>
			</div>
			@php $sum = 0 ; @endphp

			<div class="box-body">
				<div class="col-md-12">
					<table class="table">
						<tbody>
							<tr>
								<th>Ngày</th>
								<th>Số lượng</th>
								<th>Sản phẩm</th>
								<th>Ảnh</th>
								<th>Giá nhập</th>
								<!-- <th>#</th> -->
							</tr>

						</tbody>
						@if (isset($warehouses))
						@foreach($warehouses as $item)
						<tr>
							<td>{{ $item->created_at }}</td>
							<td>{{ $item->w_qty }}</td>
							@foreach($products as $product)
							@if($product->id == $item->w_product_id)
							<td>{{ $product->pro_name }}</td>
							@endif
							@endforeach
							@foreach($products as $product)
							@if($product->id == $item->w_product_id)

							<td><img src="{{ pare_url_file($product->pro_avatar) }}" style="width: 80px; height: 100px"></td>

							@endif
							@endforeach
							<td>{{ number_format($item->w_price,0,',','.') }} VNĐ</td>
							<!-- <td>
								<a href="{{ route('admin.warehousing.update', $item->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
								<a href="{{  route('admin.warehousing.delete', $item->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
							</td> -->
						</tr>
						@php
                        $sum += $item->w_price;
                        @endphp
						@endforeach
						@endif
					</table>
				</div>
				<!-- <p>Tổng tiền nhập<b> {{ number_format($sum,0,',','.') }} VNĐ</b></p> -->

			</div>
		</div>
		<!-- /.box -->
	</div>
</section>
<!-- /.content -->
@stop