<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class VendorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $users = User::where('role', 'vendor')->orderBy('name', 'asc')->get();
        return view('vendor.index', compact('users'));
        //return view('vendor.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('vendor.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $auth_items = $request->input('auth_items'); // get the values of the checkboxes as an array

        $user = new User;
        $user->name = $request->input('name');
        $user->phone = $request->input('phone');
        $user->email = $request->input('email');
        $user->password = Hash::make($request->input('password'));
        $user->address = $request->input('address');
        $user->role = 'vendor';

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('Ymdhms') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('vendors_images/images/'), $filename);
            $user->image = $filename;
        }
        $user->save();
        foreach ($auth_items as $item) {
            $values = explode(',', $item);
            Permission::create([
                'user_id' => $user->id,
                'permission_name' => $values[0], // permission name
                'value' => $values[1], // permission Value
            ]);
        }
        return back();
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
        $user = User::where('id', $id)->with('permissions')->first();
        return view('vendor.edit', compact('user'));
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

        $auth_items = $request->input('auth_items');
        $userID = User::FindorFail($id);
        $permissions = [];
        foreach ($auth_items as $item) {
            $values = explode(',', $item);
            $permissionExists = Permission::where([
                'user_id' => $userID->id,
                'permission_name' => $values[0],
                'value' => $values[1],
            ])->first();
            if ($permissionExists) {
                $permissions[] = $permissionExists;
            }
        }

        if (count($permissions) > 0) {
            return 'You are trying to give ' . $permissions[0]->permission_name . ' permission to this user which is already given';
        }
        foreach ($auth_items as $item) {
            $values = explode(',', $item);
            Permission::create([
                'user_id' =>$userID->id,
                'permission_name' => $values[0], // permission name
                'value' => $values[1], // permission Value
            ]);
        }

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('Ymdhms') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('vendors_images/images/'), $filename);
            @unlink(public_path('vendors_images/images/', $userID->image));
            $userID->image = $filename;
        }

        $userID->name = $request->name;
        $userID->phone = $request->phone;
        $userID->address = $request->address;
        $userID->save();
        return redirect()->route('vendor.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $per = Permission::where('user_id',$id)->get();
        foreach($per as $item){
            $item->delete();
        }

       $deleteUser =  User::FindorFail($id);
       @unlink(public_path('vendors_images/images/', $deleteUser->image));
       $deleteUser->delete();
       return back();

        
    }

    public function permissionDelete($id)
    {
        $data = Permission::where('id', $id)->delete();
        return back();
    }
}
