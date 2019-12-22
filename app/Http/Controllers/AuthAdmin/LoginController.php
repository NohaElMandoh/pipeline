<?php

namespace App\Http\Controllers\AuthAdmin;


use Auth;
use App\Models\EndUser;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserLoginRequest;
use App\Http\Requests\UserRequest;
use App\Models\User;
use App\Repositories\Contracts\UserInterface;
use App\Repositories\SQL\UserRepository;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;


class LoginController extends Controller
{

    private $userRepo;
    protected $redirectTo = 'admin/dashboard';
    private $path;

    public function __construct(UserInterface $userRepo)
    {
        $this->path         = Config('constants.USER_PATH');
        $this->userRepo = $userRepo;
    }
    
    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(UserLoginRequest $request)
    {

        $credentials = ['email' => $request->email, 'password' => $request->password];

        $user = User::where('email', $request->email)->first();
       
        if (!empty($user)) {
            
            if(Auth::guard('web')->attempt($credentials ,false)){
                return redirect()->intended(route('admin.dashboard'));
            }
        }
        return $this->sendFailedLoginResponse($request);
    }


    protected function sendFailedLoginResponse(Request $request)
    {
        throw ValidationException::withMessages([
            'email' => [trans('auth.failed')],
        ]);
    }

    public function showRegisterForm()
    {
        return view('auth.register');
    }
   
    protected function register(Request $request)
    {
        // $validated = $request->validated();
        $validateData = [
            'name'     => ['required', 'string', 'max:255'],
        'email'    => ['required', 'string', 'email', 'max:255', 'unique:users'],
        'password' => ['required', 'string', 'min:6', 'confirmed'],
        'phone'    => ['required'],
        'job_title'    =>['required'],
        'type'    => ['required'],


        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);

       

        if ($request['profile_pic'] == 'undefined')
        unset($request['profile_pic']);

        $request['password'] = bcrypt($request['password']);
        $user = $this->userRepo->create($request->all());
       
          //save profile Picture
          if (!empty($request['profile_pic']) && $request['profile_pic'] != 'undefined'){
            $file      = $request['profile_pic'];
            $fileName  = time().'.'.$file->getClientOriginalExtension();
            $file->move($this->path, $fileName);
            $this->userRepo->find($user->id)->update(['profile_pic'=>$fileName]);
        }
        return  redirect(route('admin.dashboard'));
    }

    public function logout(Request $request)
    {
        Auth::guard('web')->logout();
        return  redirect(route('login'));
    }
}
