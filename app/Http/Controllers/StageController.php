<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\StageInterface;
use Illuminate\Http\Request;

class StageController extends Controller
{
    private $stagesRepo;
    public function __construct(StageInterface $stagesRepo)
    {
        $this->stagesRepo = $stagesRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Stages';
        $stages = $this->stagesRepo->findAll();
        return view('admin.stages.index', compact('title', 'stages'));
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
            'name'   => 'required|unique:stages',
            'notes'  => 'required'
        ];
        $valid = validator($request->all(), $validateData);

        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);
        $stages = $this->stagesRepo->create($request->all());

        $msg  = 'Stage Added Successfully';

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
        if (!empty($id)) {
            $stage = $this->stagesRepo->find($id);
            return response()->json(['success' => true, 'stage' => $stage]);
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
        $msg  = 'Stage Updated Successfully';
        $validateData = [
            'name'   => 'required|unique:stages,name,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);

        $result = $this->stagesRepo->find($id)->update($request->all());
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
