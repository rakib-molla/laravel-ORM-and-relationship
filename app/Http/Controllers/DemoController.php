<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class DemoController extends Controller
{
    public function index()
    {
        try {
            $result = User::pluck('name', 'id', 'email');
            return $result;
        } catch (\Throwable $th) {
            //throw $th;
            Log::error('Error fetching users: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to fetch users.'], 500);
        }
    }
    public function demo1()
    {
        try {
        $result = User::create([
            'name' => 'Rakib Molla',
            'email' => 'rakib@gmail.com',
            'password' => bcrypt('password'),
        ]);

        return $result;

        } catch (\Throwable $er) {
            //throw $er;
            Log::error('Error creating user: ' . $er->getMessage());
             return response()->json(['error' => 'Failed to create user.'], 500);
        }
    }

    public function demo2($id)
    {
        try {
            // update data 
            $user = User::where('id', $id)->update([
                'name' => 'Rakib Molla updated',
                'email' => 'rakib@gmail.com'
            ]);
            return response()->json(['message' => 'User updated successfully.', 'user' => $user]);

        } catch (\Throwable $th) {
            //throw $th;
            Log::error('Error updating user: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to update user.'], 500);
        }
    }

    public function deleteUser(Request $request, $id)
    {
        try {
            $result = User::where('id', $id)->delete();
            return response()->json(['message' => 'User deleted successfully.']);
        } catch (\Throwable $th) {
            //throw $th;
            Log::error('Error deleting user: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to delete user.'], 500);
        }
    }

}
