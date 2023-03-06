<?php

namespace App\Http\Controllers\Api;

use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Division;
use App\Models\Hotelroom;

class HotelController extends Controller
{
    public function hotel_list(){
        $data = Hotel::where('status','1')->with('rooms','hotelRating')->orderBy('name', 'asc')->get();
        if($data){
            return response()->json([
                'hotel_list' =>$data, 
                200
            ]);
        }else{
            return response()->json(['error'=>'not found']);
        }
    }

    public function viewHotel($id){
        $data = Hotel::where('id',$id)->with('rooms','hotelReview','hotelRating')->first();
        if($data){
            return response()->json([
                'single_hotel' =>$data, 
                200
            ]);
        }else{
            return response()->json(['error'=>'not found']);
        }

    }

    // All rooms 
    public function hotel_Room_list(){
        $data = Hotelroom::with('hotel')->orderBy('title', 'asc')->get();
        if($data){
            return response()->json([
                'room_list' =>$data, 
                200
            ]);
        }else{
            return response()->json(['error'=>'not found']);
        }
    }
    public function popularDeals(){
        $data = Hotel::where('popular_deal','popular')->orderBy('updated_at', 'desc')->get();
        if($data){
            return response()->json([
                'popular_Deals' =>$data, 
                200
            ]);
        }else{
            return response()->json(['error'=>'not found']);
        }
    }

    public function searchByDivision(Request $request){
        $data = Division::where('name',$request->division)->with('hotel')->orderBy('name', 'asc')->get();
        if($data){
            return response()->json([
                'all_hotels_from_searched_division' =>$data, 
                200
            ]);
        }else{
            return response()->json(['error'=>'not found']);
        }
    }
}
