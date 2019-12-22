@extends('admin.layouts.login')
@section('content')
  <body class="login-bg">
  <div class="container">
    <div class="login-screen row align-items-center">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
        <form method="POST" action="{{ route('admin.login') }}">
          {{csrf_field()}}
          <div class="login-container">
            <div class="row no-gutters">
              <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
                <div class="login-box">
                  <a href="#" class="login-logo">
                    <img src="{{ url('admin/img/logo.png') }}" alt="PFS | PipeLine" />
                  </a>
                  @if($errors->any())
                    <div class="card text-white bg-secondary bg-secondary-errors">
                      <div class="card-body">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <ul class="list-unstyled">
                          @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                          @endforeach
                        </ul>
                      </div>
                    </div>
                  @endif

                  @if(session('warning'))
                  <div class="card text-white bg-secondary bg-secondary-errors">
                    <div class="card-body">
                       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      {{ session('warning') }}
                    </div>
                  </div>
                  @endif
                  @if(session('success'))
                  <div class="card text-white bg-primary bg-primary-errors">
                    <div class="card-body">
                       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      {{ session('success') }}
                    </div>
                  </div>
                  @endif
                  <div class="input-group">
                    <span class="input-group-addon" id="username"><i class="icon-account_circle"></i></span>
                    <input type="email" placeholder="email" aria-label="email" aria-describedby="email" name="email"  class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                  </div>

                  <br>
                  <div class="input-group">
                    <span class="input-group-addon" id="password"><i class="icon-verified_user"></i></span>
                    <input type="password" placeholder="Password" aria-label="Password" aria-describedby="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                  </div>
                  <div class="actions clearfix">
                  
                    <button type="submit" class="btn btn-primary">Login</button>
                  </div>
                
                </div>
              </div>
              <div class="col-xl-8 col-lg-7 col-md-6 col-sm-12">
                <div class="login-slider"></div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
@endsection