<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
   /*
   |--------------------------------------------------------------------------
   | Registration & Login Controller
   |--------------------------------------------------------------------------
   |
   | This controller handles the registration of new users, as well as the
   | authentication of existing users. By default, this controller uses
   | a simple trait to add these behaviors. Why don't you explore it?
   |
   */

   use AuthenticatesAndRegistersUsers, ThrottlesLogins;
   private $redirectTo = '/admin';
   protected $loginPath = '/login';
  
   /**
    * Create a new authentication controller instance.
    *
    * @return void
    */
   public function __construct()
   {
       $this->middleware('guest', ['except' => 'getLogout']);
   }
   public function showRegisterForm(){
     return view('site.register', [
          'pageInfo'=>['pageLogo'=>'diary','siteTitle'=>'Register', 'pageHeading'=>'User Register', 'pageHeadingSlogan'=>'Here the place to authentication']
         ]);
   }
    public function showLoginForm(){
     return view('site.login', [
          'pageInfo'=>['pageLogo'=>'diary','siteTitle'=>'Login', 'pageHeading'=>'User Login', 'pageHeadingSlogan'=>'Here the place to authentication']
         ]);
   }
   /**
    * Get a validator for an incoming registration request.
    *
    * @param  array  $data
    * @return \Illuminate\Contracts\Validation\Validator
    */
   protected function validator(array $data)
   {
       return Validator::make($data, [
           'name' => 'required|max:255',
           'email' => 'required|email|max:255|unique:users',
           'password' => 'required|confirmed|min:6',
       ]);
   }

   /**
    * Create a new user instance after a valid registration.
    *
    * @param  array  $data
    * @return User
    */
   protected function create(array $data)
   {
       return User::create([
           'name' => $data['name'],
           'email' => $data['email'],
           'password' => bcrypt($data['password']),
           'role' => 'author',
           'image' => 'assets/img/avatar.png',
       ]);
   }
}