<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class LoginController extends Controller
{

    public function register(Request $req){
      $user = new User;
      $user->name = $req->input('name');
      $user->full_name = $req->input('full_name');
      $user->profession = $req->input('profession');
      $user->dob = $req->input('dob');
      $user->is_third_party_login = false;
      $user->email = $req->input('email');
      $user->password = Hash::make($req->input('password'));
      $user->save();
      if($user){
        $accessToken = $user->createToken('authToken')->accessToken;
        return response(['user'=> $user,'access_token'=> $accessToken]);
      }else{
        return response(['message'=> 'Something went wrong']);
      }

      //return $user;
    }

    public function login(Request $request){
      $iogin = $request->validate([
        'email' => 'required|string',
        'password' => 'required|string'
      ]);

      if( !Auth::attempt($iogin) ){
        return response(['message' => 'Invalid Login Credentials']);
      }

      $accessToken = Auth::user()->createToken('authToken')->accessToken;
      return response(['user'=> Auth::user(),'access_token'=> $accessToken]);

    }

    public function all(){
      return User::all();
    }

    public function update_profile(Request $request){
        $inputs = $request->all();
        $user = User::find($inputs['id']);
        $user->update($inputs);
        //$accessToken = $user->accessToken;
        $accessToken = $user->createToken('authToken')->accessToken;
        return response(['user'=> $user,'access_token'=> $accessToken]);
    }

    public function delete_profile(Request $request){
        $inputs = $request->all();
        $response = User::where('id',$inputs['id'])->delete();
        if($response){
          return response(['result'=>'user has been deleted']);
        }
        else{
          return response(['result'=>'operation failed for some reason']);
        }

    }

    public function login_google(Request $request){
      $inputs = $request->all();
      $user = User::where('email',$inputs['email'])->first();

      if($user){
        $accessToken = $user->createToken('authToken')->accessToken;
        return response(['user'=> $user,'access_token'=> $accessToken]);
      }
      else{
        $user = new User;
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->save();
        $accessToken = $user->createToken('authToken')->accessToken;
          //return response(['user'=> $user,'access_token'=> $accessToken]);
          if($user){
            $accessToken = $user->createToken('authToken')->accessToken;
            return response(['user'=> $user,'access_token'=> $accessToken]);
          }else{
            return response(['message'=> 'Something went wrong']);
          }
      }

    }



}
