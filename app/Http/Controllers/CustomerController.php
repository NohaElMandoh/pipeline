<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Repositories\Contracts\CategoryInterface;
use App\Repositories\Contracts\CustomerInterface;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    private $customerRepo;

    public function __construct(CustomerInterface $customerRepo)
    {
        $this->customerRepo=$customerRepo;
    
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Customers';
        $customers = $this->customerRepo->findAll();
       
        return view('admin.customers.index', compact('title','customers'));
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
        
        $validateData = ['name'=> 'required|unique:customers,name,NULL,id,deleted_at,NULL',];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success'=>false,'errors'=>$valid->errors()->all()]);

        $msg  = 'Customer Added Successfully';

        $customer = $this->customerRepo->create($request->all());
        return response()->json(['success'=>true, 'message'=>$msg, 'result'=> $customer]);
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
            $customer = $this->customerRepo->findWithRelation($id,['pipeline']);
            return response()->json(['success' => true, 'customer' => $customer]);
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
        $msg  = 'Customer Updated Successfully';
        $validateData = [
            'name'   => 'required|unique:customers,name,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);

        $result = $this->customerRepo->find($id)->update($request->all());
        return response()->json(['success' => true, 'message' => $msg]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function destroy($id){
        $msg  = 'Customer Deleted Successfully';
        $msg1 = 'Something Goes Wrong';
        $msg2 = 'You Can\'t Delete Customer, This Customer Related To Other Tables';

        if(!empty($id)){
            $check        = $this->customerRepo->checkPipeline($id);
            $checkContact = $this->customerRepo->checkContact($id);
         
       
        

            if($check==true || $checkContact ==true)
                return response()->json(['success'=>false, 'message'=>$msg2]);

            if($this->customerRepo->find($id)->delete())
                return response()->json(['success'=>true, 'message'=>$msg]);
        }
        return response()->json(['success'=>false, 'message'=>$msg1]);
    }
}
