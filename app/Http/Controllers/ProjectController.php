<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project;
use App\Office;
use App\Country;
use App\ProjectTitle;
use App\Readiness;
use App\ReadinessCategory;
use Gate;
use Yajra\Datatables\Datatables;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (!Gate::allows('isAdmin')) {
            abort(404, "Sorry, You can do this actions");
        }
        $offices = Office::all();
        $countries = Country::all();
        $readiness = Readiness::all();
        $readiness_cat = ReadinessCategory::all();

        $status = ["completed", "under imple"];

        return view('project.index', ["status" => $status, "offices" => $offices, "countries" => $countries, "readiness" => $readiness, "cat" => $readiness_cat]);
    }

    /**
     * get the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getProjects()
    {

        $projects = Project::all();

        return Datatables::of(Project::query()->with("Office", 'Country', 'titles'))->addColumn('action', function ($row) {
            // $actionBtn = '<a href="/projects/'. $row->id .'" class="edit btn btn-success btn-sm">Edit</a> <a href="javascript:void(0)" class="delete btn btn-danger btn-sm">Delete</a>';
            $titles = $row->titles;
            $title = '';
            foreach($titles as $tit){
                $title .= $tit->title;
            }
            $actionBtn = <<<ROW
        <div class = 'btn-group btn-group-xs'>
        <button type="button" class="btn btn-xs btn-success mr-5 mb-5" data-myTitle="$title" data-projectRef="$row->project_ref", data-grantAmount="$row->grant_amount"
        data-duration="$row->duration" data-gcf="$row->date_from_gcf" data-startDate="$row->start_date" data-endDate ="$row->end_date"
        data-disbursedAmount="$row->first_disbursement_amount" data-projectId="$row->id" data-toggle="modal" data-target="#view"><i class="fa fa-eye"></i> view</button>
       
        <button type="button" class="btn btn-xs btn-info mr-5 mb-5" data-myTitle="$title" data-projectRef="$row->project_ref", data-grantAmount="$row->grant_amount"
        data-duration="$row->duration" data-gcf="$row->date_from_gcf" data-startDate="$row->start_date" data-endDate ="$row->end_date"
        data-disbursedAmount="$row->first_disbursement_amount" data-projectId="$row->id" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i> edit</button>
        
        <button type = 'button' class = 'btn btn-xs btn-danger' data-projectId="$row->id" data-toggle = 'modal' data-target = '#delete'><i class = 'fa fa-trash-o'></i> delete</button>

        </div>
ROW;
            return $actionBtn;
        })->make(true);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getAllProjects()
    {
        $projects = Project::with('Office', 'Country', 'titles')->get();
        return response()->json(['status' => 'Success', 'projects' => $projects]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getKenyaProjects()
    {
        $s = "Jordan";
        $country = Country::where('country_name', 'like', '%kenya%')->with('projects')->get();
        
        //$projects = Project::with('Office', 'Country', 'titles')->get();
        return response()->json(['status' => 'Success', 'kenya_projects' => $country]);
    }

     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCompletedProjects()
    {
        $projects = Project::where('project_status', 'like', '%comple%')->with('Office', 'Country', 'titles')->get();
        
        return response()->json(['status' => 'Success', 'completed_projects' => $projects]);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            //code...
            $project_title = new ProjectTitle(['title' => $request->title]);
            $project = Project::create($request->all());
            $project->titles()->save($project_title);
        } catch (\Throwable $th) {
            //throw $th;
           return back()->with('error',$th->getMessage());
        }


        return back()->with('success','Item created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    public function update(Request $request)
    {
        try {
            //code...
            $title = ProjectTitle::where('project_id', $request->project_id);
        $title->update(['title'=> $request->title]);
        $project = Project::findOrFail($request->project_id);
        $project->update($request->all());
        } catch (\Throwable $th) {
            //throw $th;
            return back()->with('error',$th->getMessage());
        }
        

        return back()->with('success','Item edited successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        try {
            //code...
            $title = ProjectTitle::where('project_id', $request->project_id);
            $title->delete();
            $project = Project::findOrFail($request->project_id);
            $project->delete();
        } catch (\Throwable $th) {
            return back()->with('error',$th->getMessage());
        }
        

        return back()->with('success','Item deleted successfully!');
    }
}
