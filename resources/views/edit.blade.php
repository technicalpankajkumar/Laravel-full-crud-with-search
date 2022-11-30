@extends('layouts.user_layout')
@section('content')

<div class="album py-1" style="height:10vh;">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="card border-success" style="max-width: 65rem;padding: 2%;">
            <h2 class="text-center">Updates User Details </h2>
            <span><a class="btn btn-success" href="{{route('crud.index')}}">Back</a></span>
            <hr>
            <div class="card-body">
<!-- form is started here -->
                 <form method="POST" action="{{route('crud.update',['crud'=>$crud->id])}}" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col">
                            <label for="fname" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="fname" name="first_name" placeholder="Pankaj"
                                   required="" value="{{$crud->first_name}}" >
                        </div>
                        <div class="col">
                            <label for="lname" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lname" name="last_name" placeholder="Kumar"
                                   required="" value="{{$crud->last_name}}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email"
                                   placeholder="name@example.com" required="" value="{{$crud->email}}" >
                        </div>
                        <div class="col">
                            <label for="mobile" class="form-label">Contact Number</label>
                            <input type="tel" class="form-control" id="contact" name="contact"
                                   placeholder="1234567890" required="" value="{{$crud->contact}}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="gender" class="form-label">Gender</label><br>
                            <input type="radio" id="gender" name="gender" value="Male" @if ($crud->gender=='Male')
                                 checked @endif >Male
                            <input type="radio" id="gender" name="gender" value="Female" @if ($crud->gender=='Female')
                                checked @endif >Female
                        </div>
                        <div class="col">

                            <label for="hobbies" class="form-label">Hobbies</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                       name="hobbies[]" value="Travelling"@if (in_array('Travelling',$crud->hobbies_arr))checked @endif >
                                <label class="form-check-label" for="inlineCheckbox1">Travelling</label>
                            </div>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                       name="hobbies[]" value="Music" @if (in_array('Music',$crud->hobbies_arr))checked @endif >
                                <label class="form-check-label" for="inlineCheckbox2" >Music</label>
                            </div>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                       name="hobbies[]" value="Coding" @if (in_array('Coding',$crud->hobbies_arr))checked @endif >
                                <label class="form-check-label" for="inlineCheckbox3">Coding</label>
                            </div>

                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" rows="3" cols="3" name="address"
                                      placeholder="address" required="" >{{$crud->address}}</textarea>
                        </div>
                        <div class="col">
                            <label for="inputCountry" class="form-label">Country</label>
                            <select class="form-select" id="inputCountry" aria-label="Default select example" name="country"  required="">
                                <option selected disabled>Select</option>

                                @foreach ( $country as $countries )
                                <option value="{{$countries->id}}" @if ($crud->country == $countries->id)
                                    selected
                                @endif>{{$countries->name}}</option>
                                @endforeach

                            </select>
                        </div>

                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="profile" class="form-label">Profile</label><br>
                            <img src="{{url('profiles').'/'.$crud->profile}}" alt="Profile Image" height="100px"/>
                            <input type="file" class="form-control-file" name="profile" id="profile">
                        </div>
                    </div>
                    <br>
                    <div class="row mb-3">
                        <div class="col-5"></div>
                        <div class="col-2">
                            <input type="submit" name="updates" id="updates" value="Updates" class="btn btn-warning btn-lg btn-block">
                        </div>
                        <div class="col-5"></div>
                    </div>
                </form>
              
<!-- form end here -->
            </div>
        </div>
    </div>
</div>
@endsection