@extends('admin.layouts.login')
@section('title', 'Register')
@section('content')

<body class="login-bg">
  <div class="container">
    <div class="login-screen row align-items-center">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">

        <form action="{{ route('admin.register') }}" method="post">
          {{csrf_field()}}
          <div class="login-container">
            <div class="row no-gutters">
              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="login-box">
                  <a href="#" class="login-logo">
                    <img src="{{ url('admin/img/logo.png') }}" alt="PipeLine | Roqay" />
                  </a>
                  <div>
                    <div class="input-group">
                      <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Name" name="name" value="{{old('name')}}">
                    </div>
                    @error('name')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <br>
                  <div>
                    <div class="input-group">
                      <input type="text" class="form-control @error('phone') is-invalid @enderror" placeholder="Phone" name="phone" value="{{old('phone')}}">
                    </div>
                    @error('phone')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <br>
                  <div>
                    <div class="input-group">
                      <input type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{old('email')}}">
                    </div>
                    @error('email')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <br>
                  <div>
                    <div class="input-group">
                      <input type="text" class="form-control @error('job_title') is-invalid @enderror" placeholder="Job Title" name="job_title" value="{{old('job_title')}}">
                    </div>
                    @error('job_title')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <br>
                  <input type="hidden" name="type" value='1'>
                  <div>
                    <div class="input-group">
                      <input type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" name="password">
                    </div>
                    @error('password')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <br>
                  <div>
                    <div class="input-group">
                      <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" placeholder="Password Confirmation" name="password_confirmation">
                    </div>
                    @error('password_confirmation')
                    <span style="display: block" class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <div class="actions clearfix">
                    <button type="submit" class="btn btn-primary">Register</button>
                  </div>
                  <div class="or"></div>
                  <div class="mt-4">
                    <a href="#" class="additional-link">Already have an Account? <span>Login Now</span></a>
                  </div>
                </div>
              </div>
              <div class="col-xl-8 col-lg-8 col-md-6 col-sm-12">
                <div class="signup-slider"></div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  @endsection