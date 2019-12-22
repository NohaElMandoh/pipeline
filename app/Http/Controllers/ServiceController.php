<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\CategoryInterface;
use App\Repositories\Contracts\ServiceInterface;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    private $servicesRepo;
   private $categoryRepo;

    public function __construct(ServiceInterface $servicesRepo,CategoryInterface $categoryRepo)
    {
        $this->servicesRepo=$servicesRepo;
        $this->categoryRepo=$categoryRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Services';
        $services = $this->servicesRepo->findAll();
        $categories=$this->categoryRepo->findAll();
        return view('admin.services.index', compact('title','services','categories'));
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
    public function store(Request $request)
    {

        $validateData = [
            'name'   => 'required|unique:services',
           'price'=>'required|between:0,99.99',
        ];
        // $price=$request->price;
    //    if( $price.match(/^[0-9]{6}\.[0-9]{3}$/) !== null)


        $valid = validator($request->all(), $validateData);

        if ($valid->fails())
            return response()->json(['success'=>false,'errors'=>$valid->errors()->all()]);
        $services = $this->servicesRepo->create($request->all());

        $msg  = 'Service Added Successfully';
      
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
            $service = $this->servicesRepo->find($id);
            return response()->json(['success' => true, 'service' => $service]);
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
        $msg  = 'Service Updated Successfully';
        $validateData = [
            'name'   => 'required|unique:services,name,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);

        $result = $this->servicesRepo->find($id)->update($request->all());
        return response()->json(['success' => true, 'message' => $msg]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id){
        $msg  = 'Service Deleted Successfully';
        $msg1 = 'Something Goes Wrong';
        $msg2 = 'You Can\'t Delete Service, This Service Related To Other Tables';

        if(!empty($id)){
            // $check = $this->servicesRepo->checkStage($id);
            // if($check == true)
            //     return response()->json(['success'=>false, 'message'=>$msg2]);

            if($this->servicesRepo->find($id)->delete())
                return response()->json(['success'=>true, 'message'=>$msg]);
        }
        return response()->json(['success'=>false, 'message'=>$msg1]);
    }}
