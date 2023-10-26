<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return User::where('estado',1)->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $User = new User();
        $User->name = $request->name;
        $User->email = $request->email;
        $User->password = Hash::make($request->password);
        $User->save();
        return $User;
    }
 

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function show(User $User)
    {
        return $User;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $user->name = $request->name;
        $user->email = $request->email;
        if(!empty($request->password)){
            $user->password = Hash::make($request->password);

        }
        $user->save();
        return $user;
    }
    public function iniciarSesion(Request $request){
        if (Auth::attempt(['email'=> $request->email,'password'=> $request->password],false)) {
            // Authentication passed...
            $user = Auth::user();
            $user->caja = $user->Caja;
            return $user;
        }else{

            return response()->json(['errors'=>['login'=>['Los datos  que ingresaste son incorrectos']]],422);
        }
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->estado = 0;
        $user->save();
        return $user;
    }
}
