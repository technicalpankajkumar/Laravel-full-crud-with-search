@extends('layouts.user_layout')
@section('content')

<div class="row">
    <div class="col-sm-12 col-md-7 col-lg-12 mx-auto">
        <div class="card my-5">
            <div class="card-body">
                <h4 class="card-title text-center">All Users</h4>
            <form action="">
                <div class="row">
                    <div class=" col-2"><a  class="btn btn-success" href="{{route('crud.create')}}">Registration</a>
                    </div>
                    <div class=" col-6"></div>
                    <div class="form-group col-2">
                    <input type="search" name="search" id="" class="form-control" placeholder="Search Now" value="{{$search}}">
                    </div>
                    <div class="col-2"><button class="btn btn-success btn-sm">Search now</button>
                        <a class=" btn btn-primary btn-sm" href="{{url('/crud')}}">Reset now</a>
                    </div>            
            </form>
            </div>
                <hr>
                 @if (session()->exists('success'))
                 <div class="alert alert-success">
                    {{session('success')}}
                 </div>
                @endif
                <table class="table table-bordered mt-2">
                    <thead>
                    <tr>
                        <td>U Id</td>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>Email</td>
                        <td>Contact</td>
                        <td>Gender</td>
                        <td>Hobbies</td>
                        <td>Address</td>
                        <td>Country</td>
                        <td>Action</td>
                    </tr>
                    </thead>
                    <tbody>
                        @forelse($data as $users )
                        <tr>
                            {{-- <td>{{$loop->iteration}}</td> --}}
                            <td>{{$users->id}}</td>
                            <td>{{$users->first_name}}</td>
                            <td>{{$users->last_name}}</td>
                            <td>{{$users->email}}</td>
                            <td>{{$users->contact}}</td>
                            <td>{{$users->gender}}</td>
                            <td>{{$users->hobbies}}</td>
                            <td>{{$users->address}}</td>
                            <td>{{$users->getCountry->name}}</td>
                            <td>
                                <form method="POST" action="{{route('crud.destroy',['crud'=>$users->id])}}">
                                    @csrf
                                    @method('DELETE')
                                <a class="btn btn-primary btn-sm" href="{{route('crud.show',['crud'=>$users->id])}}">Show</a>
                                <a class="btn btn-warning btn-sm" href="{{route('crud.edit',['crud'=>$users->id])}}">Update </a>
                                    <input type="submit" class="btn btn-danger btn-sm" value="Delete"/>
                                </form>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="10">Data is empty</td>
                        </tr>
                        @endforelse
                    
                    </tbody>
                </table>
               {{$data->links('pagination::bootstrap-4')}}
            </div>   
    </div>
</div>
@endsection