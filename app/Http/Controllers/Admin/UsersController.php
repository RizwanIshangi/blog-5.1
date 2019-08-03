<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserEditRequest;
use Validator;
use Hash;
//use Event;

//use App\Events\ChangeRoleEvent;

use App\Models\User;

class UsersController extends Controller
{
    function __construct()
    {
        $this->middleware('admin');
    }

    public function getManage()
    {

        $this->middleware('admin');

        $users=User::paginate(20);
        return view('admin.users.manage', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Manage Users',
            'pageHeading'      =>'Manage Users',
            'pageHeadingSlogan'=>'Here the section to manage all registered users'
            ]
            ,
            'data'=>
            [
               'users'      =>  $users
              ]
          ]);
    }

    public function getEdit($id)
    {
        $this->middleware('admin');

        $user=User::find($id);
        return view('admin.users.edit', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Edit User',
            'pageHeading'      =>'Edit User',
            'pageHeadingSlogan'=>'Here the section to edit user'
            ]
            ,
            'data'=>
            [
               'user'      =>  $user
              ]
          ]);
    }
     public function getAdd()
    {

        return view('admin.users.add', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Add User',
            'pageHeading'      =>'Add User',
            'pageHeadingSlogan'=>'Here the section to edit user'
            ]
          ]);
    }
    public function postAdd(Request $req)
    {

        $user=new User;
          $rules=[
          'name'=>['required','max:255'],
          'email'=>['required','email','max:255','unique:users'],
          'password'=>['required','min:6']
        ];

        $valid=Validator::make($req->input(), $rules);
        if(!$valid->fails()){
            $user=new User;
            $user->name=$req->input('name');
            $user->email=$req->input('email');
            $user->password=bcrypt($req->input('password'));
            $user->role=$req->input('role');
            $user->status=0;
            $user->image='assets/img/avatar.png';
            if($user->save()){
                return redirect()->back()->with('msg', 'ok');
            }
        }else{
          return redirect()->back()->withErrors($valid->errors());
        }  
    }
    public function postEdit(UserEditRequest $req, $id)
     {

        $user = User::find($id);
        $user->name=$req->input('name');
        if($user->save()){
            return redirect()->back()->with('msg', 'ok');
        }
     }
    public function getRole($user, $role)
    {
        $roles=[
            'admin',
            'author',
            'user'
        ];

        if(in_array($role, $roles)){
            $user=User::findOrFail($user);
            $user->role=strtolower($role);
            if($user->save()){
                //Event::fire(new ChangeRoleEvent($user));
                return redirect()->back();
            }

        }

        return 'Someting went wrong';
    }
}
