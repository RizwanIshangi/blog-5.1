<?php namespace Rizwanx\Notify;
/*
*@Author:		Rizwan Ishangi
*@Author URL:	http://rizwan.co
*/

use App\Http\Controllers\Controller;
use App\Models\Notifications;
use Rizwanx\Notify\Notify;


class NotifyController extends Controller{

    public function index(Notify $nt){
        // $noti=Notifications::get();
        // return view('notify::view')->with('notify', $noti);

        return $nt->getName();
    }
}
