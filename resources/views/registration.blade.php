@extends('layouts.user_layout')
@section('content')

<div class="album py-1" style="height:10vh;">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="card border-success" style="max-width:65rem; padding:1%">
            <h2> Registration </h2>
            <hr>
            <div class="card-body">
<!-- form is started here -->
                <form method="POST" action="{{route('crud.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col">
                            <label for="fname" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="fname" name="first_name" placeholder="Pankaj" required>
                            <span class="text-danger">
                                @error('first_name')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="col">
                            <label for="lname" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lname" name="last_name" placeholder="Kumar"required="">
                            <span class="text-danger">
                                @error('last_name')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required="">
                            <span class="text-danger">
                                @error('email')
                                   {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="col">
                            <label for="mobile" class="form-label">Contact Number</label>
                            <input type="tel" class="form-control" id="contact" name="contact" placeholder="9177586989" required="">
                            <span class="text-danger">
                                @error('contact')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="gender" class="form-label">Gender</label><br>
                            <input type="radio" id="gender" name="gender" value="Male">Male
                            <input type="radio" id="gender" name="gender" value="Female">Female<br>
                            <span class="text-danger">
                            @error('gender')
                            {{$message}}
                            @enderror
                            <span>
                        </div>
                        <div class="col">
                            <label for="hobbies" class="form-label">Hobbies</label>
                            <br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="hobbies[]" value="Travelling">
                                <label class="form-check-label" for="inlineCheckbox1">Travelling</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="hobbies[]" value="Music">
                                <label class="form-check-label" for="inlineCheckbox2">Music</label>
                            </div>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="hobbies[]" value="Coding">
                                <label class="form-check-label" for="inlineCheckbox3">Coding</label>
                            </div>
                            <br>
                                <span class="text-danger">
                                   @error('hobbies')
                                      {{$message}}
                                   @enderror
                                </span>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" rows="3" cols="3" name="address" placeholder="address" required="" >    
                            </textarea>
                            <span class="text-danger">
                                @error('address')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="col">
                            <label for="inputCountry" class="form-label">Country</label>
                            <select class="form-select" id="inputCountry" aria-label="Default select example" name="country" required="">
                                <option selected disabled>Select</option>

                                @foreach ( $country as $countries )

                                <option value="{{$countries->id}}">{{$countries->name}}</option>

                                @endforeach
                            </select>
                            <span class="text-danger">
                                @error('country')
                                  {{$message}}
                                @enderror
                            </span>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="profile" class="form-label">Profile</label><br>
                            <input type="file" class="form-control-file" name="profile" id="profile"><br>
                            <span class="text-danger">
                            @error('profile')
                            {{$message}}
                            @enderror
                            </span>
                        </div>
                        
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-5"></div>
                        <div class="col-2">
                            <input type="submit" name="regist" id="regist" value="Register" class="btn btn-primary btn-lg btn-block">
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