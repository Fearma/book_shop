<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AdminLoginController extends Controller
{
    use AuthenticatesUsers;

    public function getLoginAdmin()
    {
        if (get_data_user('admins')) {
            return redirect()->route('admin.statistical');
        }
        return view('admin.auth.login');
    }

    public function postLoginAdmin(Request $request)
    {
        if (\Auth::guard('admins')->attempt(['email' => $request->email, 'password' => $request->password])) {
//            return redirect()->intended('/api-admin');
            return redirect()->route('admin.statistical');
        }

        return redirect()->back();
    }

    public function getLogoutAdmin()
    {
        \Auth::guard('admins')->logout();
        return redirect()->to('/admin-auth/login');
    }
}
