<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\StageInterface;
use App\Repositories\Contracts\UserInterface;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    private $userRepo;
    private $path;

    public function __construct(UserInterface $userRepo)
    {
        $this->path         = Config('constants.USER_PATH');
        $this->userRepo = $userRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Employees';
        $users = $this->userRepo->findAll($applyOrder = true, $orderBy = 'created_at', $orderDir = 'DESC');
        return view('admin.users.index', compact('title', 'users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
      //add employee
      public function store(Request $request)
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
          $msg  = 'Employee Added Successfully';
          
          return response()->json(['success'=>true, 'message'=>$msg]);
  
      }
  

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (!empty($id)) {
            $user = $this->userRepo->find($id);
            return response()->json(['success' => true, 'user' => $user]);
        }
        return response()->json(['success' => false, 'errors' => [0 => 'Not Found Data']]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $msg  = 'Employee Updated Successfully';
        $validateData = [
            'name'   => 'required|unique:users,name,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);
           
        $result = $this->userRepo->find($id)->update($request->all());
        return response()->json(['success' => true, 'message' => $msg]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $msg  = 'Stage Deleted Successfully';
        $msg1 = 'Something Goes Wrong';
        $msg2 = 'You Can\'t Delete Stage, This Stage Related To Other Tables';

        if (!empty($id)) {
            // $check = $this->stagesRepo->checkStage($id);
            // if($check == true)
            //     return response()->json(['success'=>false, 'message'=>$msg2]);

            if ($this->stagesRepo->find($id)->delete())
                return response()->json(['success' => true, 'message' => $msg]);
        }
        return response()->json(['success' => false, 'message' => $msg1]);
    }
}
