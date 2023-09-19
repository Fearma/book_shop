@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"> Create</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                        @csrf
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Số lượng <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_qty"  value="{{ $warehouse->w_qty }}" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Giá <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_price" value="{{ $warehouse->w_price }}"  placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Sản phẩm <span class="text-danger">(*)</span></label>
                                <select name="w_product_id" class="form-control js-example-basic-single" id="">
                                    <option value="0">Tên sản phẩm</option>
                                    @foreach($products as $item)
                                        <option value="{{ $item->id }}" {{ $warehouse->w_product_id == $item->id ? "selected" : "" }}>{{ $item->pro_name }} {{ $item->id }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
    <script src="https://code.jquery.com/jquery-3.7.0.slim.js" integrity="sha256-7GO+jepT9gJe9LB4XFf8snVOjX3iYNb0FHYr5LI1N5c=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.js-example-basic-single').select2();
        });
    </script>
@stop
