<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\CustomerInterface;
use App\Repositories\Contracts\OpportunityInterface;
use App\Repositories\Contracts\ServiceInterface;
use App\Repositories\Contracts\StageInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OpportunityController extends Controller
{
    private $opportunityRepo;
    private $customerRepo;
    private $serviceRepo;
    private $stageRepo;


    public function __construct(OpportunityInterface $opportunityRepo, StageInterface $stageRepo, CustomerInterface $customerRepo, ServiceInterface $serviceRepo)
    {
        $this->opportunityRepo = $opportunityRepo;
        $this->customerRepo = $customerRepo;
        $this->serviceRepo = $serviceRepo;
        $this->stageRepo = $stageRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Opportunities';
        $opportunities = $this->opportunityRepo->findAll();
        $customers = $this->customerRepo->findAll();
        $services = $this->serviceRepo->findAll();
        $stages = $this->stageRepo->findAll();

        return view('admin.piplines.index', compact('title', 'opportunities', 'customers', 'services', 'stages'));
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

        $msg  = 'Opportunity Added Successfully';
        $currntUser = auth()->user();

        $validateData = [
            'title'   => 'required|unique:pipelines',

        ];
        $valid = validator($request->all(), $validateData);

        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);
        $requestArray = $request->all();

        if (!empty($requestArray['services']))
            $requestArray['services']    = implode(',', $requestArray['services']);


        $opportunities = $currntUser->pipeline()->create($request->all());

        if (!empty($request['services']))
            $opportunities->services()->sync($request['services']);

        if (!empty($request['stage_id']))
            $opportunities->stages()->sync($request['stage_id']);


        return response()->json(['success' => true, 'message' => $msg]);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = Auth::user();
        $opportunity = $this->opportunityRepo->find($id);
        $stage = $this->stageRepo->find($opportunity->stages);
        $customer = $this->customerRepo->find($opportunity->customer);
        // $services= $this->opportunityRepo->services;
        $customers = $this->customerRepo->findAll();
        $services = $this->serviceRepo->findAll();
        $stages = $this->stageRepo->findAll();

        return view('admin.piplines.view', compact('opportunity', 'stage', 'customer', 'customers', 'services', 'stages'));
    }
    public function getAjaxRequest($id)
    {
        if (!empty($id)) {
            $opportunity = $this->opportunityRepo->find($id);
            $customers = $this->customerRepo->findAll();
            $services = $this->serviceRepo->findAll();
            $stages = $this->stageRepo->findAll();

            return response()->json(['success' => true, 'opportunity' => $opportunity, 'customers' => $customers, 'services' => $services, 'stages' => $stages]);
        }
        return response()->json(['success' => false, 'errors' => [0 => 'Not Found Data']]);
    }
    public function updateStage(Request $request)
    {
        $msg  = 'Stage Updated Successfully';

        if (!empty($request->pipeline_id)) {
            $opportunity = $this->opportunityRepo->find($request->pipeline_id);
            $updateStage = $opportunity->stages()->sync([$request->all()], false);
            return response()->json(['success' => true, $msg]);
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
        $msg  = 'Opportunity Updated Successfully';
        $validateData = [
            'title'   => 'required|unique:pipelines,title,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);
        $opportunity =   $this->opportunityRepo->find($id);
        $result = $opportunity->update($request->all());

        if (!empty($request['services']))
            $opportunity->services()->sync($request['services']);

        if (!empty($request['stage_id']))
            $opportunity->stages()->sync($request['stage_id'], false);
        return response()->json(['success' => true, 'message' => $msg]);
    }
    // 
    public function addService(Request $request)
    {
        $msg  = 'Services Added Successfully';
        $validateData = [
            'services'   => 'required',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);
        $opportunity =   $this->opportunityRepo->find($request->pipeline_id);


        if (!empty($request['services']))
            $opportunity->services()->sync($request['services'], false);


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
        $msg  = 'Opportunity Deleted Successfully';
        $msg1 = 'Something Goes Wrong';
        $msg2 = 'You Can\'t Delete Opportunity, This Opportunity Related To Other Tables';

        if (!empty($id)) {
            $check = $this->opportunityRepo->checkService($id);
            if ($check == true)
                return response()->json(['success' => false, 'message' => $msg2]);

            $checkstage = $this->opportunityRepo->checkStage($id);
            if ($checkstage == true)
                return response()->json(['success' => false, 'message' => $msg2]);

            if ($this->opportunityRepo->find($id)->delete())
                return response()->json(['success' => true, 'message' => $msg]);
        }
        return response()->json(['success' => false, 'message' => $msg1]);
    }
}
