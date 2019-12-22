<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\CategoryInterface;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    private $categoryRepo;
    
    public function __construct(CategoryInterface $categoryRepo)
    {
        $this->categoryRepo=$categoryRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title  = 'Categories';
        $categories = $this->categoryRepo->findAll();
        return view('admin.categories.index', compact('title','categories'));
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
            'name'   => 'required|unique:categories',
          
        ];
        $valid = validator($request->all(), $validateData);

        if ($valid->fails())
            return response()->json(['success'=>false,'errors'=>$valid->errors()->all()]);
        $stages = $this->categoryRepo->create($request->all());

        $msg  = 'Category Added Successfully';
      
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
            $category = $this->categoryRepo->find($id);
            return response()->json(['success' => true, 'category' => $category]);
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
        $msg  = 'Category Updated Successfully';
        $validateData = [
            'name'   => 'required|unique:categories,name,' . $id . ',id,deleted_at,NULL',

        ];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails())
            return response()->json(['success' => false, 'errors' => $valid->errors()->all()]);

        $result = $this->categoryRepo->find($id)->update($request->all());
        return response()->json(['success' => true, 'message' => $msg]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id){
        $msg  = 'Category Deleted Successfully';
        $msg1 = 'Something Goes Wrong';
        $msg2 = 'You Can\'t Delete Category, This Category Related To Other Tables';

        if(!empty($id)){
            $check = $this->categoryRepo->checkCategory($id);
            if($check == true)
                return response()->json(['success'=>false, 'message'=>$msg2]);

            if($this->categoryRepo->find($id)->delete())
                return response()->json(['success'=>true, 'message'=>$msg]);
        }
        return response()->json(['success'=>false, 'message'=>$msg1]);
    }}
