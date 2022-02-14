<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index()
    {
      $is_admin = Auth::user()->is_admin;

      if($is_admin === null) {
            $data = DB::table('tasks')
            ->where('user_id', Auth::id())
            ->orderBy('id', 'DESC')
            ->paginate(10);
      } else if($is_admin === 1) {
            $data = DB::table('tasks')
            ->orderBy('id', 'DESC')
            ->paginate(10);
      }

      return response()->json($data);
    }
  
    public function store(Request $request)
    {
      $validatedData = $request->validate([
        'title' => 'required',
        'body' => 'required',
      ]);
  
      $item = Task::create([
        'title' => $validatedData['title'],
        'body' => $validatedData['body'],
        'user_id' => Auth::id(),
      ]);

      return response()->json('  Added Successfully! ');
    }
  
    public function edit($id)
    {
      $item = Task::find($id);
  
     return response()->json($item);
    }
  
    public function update(Request $request, $id)
  {
      $item = Task::find($id);
      $item->title = $request->title;
      $item->body = $request->body;
      $item->save();
  
      return response()->json('Successfully Updated');
  }
  
  public function destroy($id)
  {
    $item = Task::find($id);
    $item->delete();
  
    return response()->json('Successfully Deleted');
  }
}
