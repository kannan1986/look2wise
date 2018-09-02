@extends('layouts.app')

@section('content')

@if(Request::segment(2) == '')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
					Admin Dashboard
					@if(Auth::user()->role_type == 0)
						<div id="map-canvas" style="position: inherit !important;"></div>
					@endif
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@if(Request::segment(2) == 'userList')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">User List</div>

                <div class="panel-body">
                    <table id="t01">
					  <tr>
						<th>Name</th>
						<th>Email</th> 
						<th>Created Date</th>
					  </tr>
					  @foreach($user as $list)
					  <tr>
						<td>{{ $list->name }}</td>
						<td>{{ $list->email}}</td>
						<td>{{ date('m/d/Y',strtotime($list->created_at)) }}</td>
					  </tr>
					  @endforeach
					</table>
                </div>
            </div>
        </div>
    </div>
</div>
@endif

@endsection
