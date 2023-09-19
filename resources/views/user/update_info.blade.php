@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Cập nhật thông tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" placeholder="">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" placeholder="Enter email">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Phone</label>
                <input type="number" name="phone" class="form-control" value="{{ Auth::user()->phone }}" placeholder="Enter email">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Address</label>
                <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}" placeholder="Địa chỉ">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div>
                <img id="blah" onerror="this.onerror=null;this.src='/images/no-image.jpg'" style="width: 100px;height: 100px" src="{{ pare_url_file(Auth::user()->avatar) }}" alt="your image" />
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <button class="btn-upload">Tải avatar lên</button>
                    <input type="file" name="avatar" onchange="readURL(this);" />
                </div>
            </div>

            <button type="submit" class="btn btn-blue btn-md">Cập nhật</button>
        </form>

    </section>
@stop
@section('script')
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
@stop
