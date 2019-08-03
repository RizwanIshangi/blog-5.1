@extends('admin.layouts.master')

@section('contents')
@if(count($errors)>0)
<div class="alert alert-danger">
  @foreach($errors->all() as $err)
    <li>{{$err}}</li>
  @endforeach
</div>
@endif
@if(session('msg')=='ok')
<div class="alert alert-success">
  Successfully updated
</div>
@endif
<form action="" method="post" enctype="multipart/form-data">
    <input name="name" type="text" value="{{$data['user']->name}}"  class="form-control" style="height:40px;"  /><br/>
	
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <button type="submit" class="btn btn-success btn-lg">Save</button>
  </form>
@stop
