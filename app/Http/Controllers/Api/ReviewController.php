<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Models\Reviewhotel;
use Illuminate\Http\Request;
use Auth;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $rv = Review::create([
            'user_id' => Auth::user()->id,
            'user_name' => Auth::user()->name,
            'restaurant_id' => $request->restid,
            'restaurant_name' => $request->restname,
            'star' => $request->star,
            'feedback' => $request->feedback,
        ]);

        return response()->json([
            'message' => "Review Added Successfully",
            'Review' => $rv,
        ]);
    }
    public function hotelReviewStore(Request $request)
    {
        $rv = Reviewhotel::create([
            'user_id' => Auth::user()->id,
            'user_name' => Auth::user()->name,
            'hotel_id' => $request->hotelid,
            'hotel_name' => $request->hotelname,
            'star' => $request->star,
            'feedback' => $request->feedback,
        ]);

        return response()->json([
            'message' => "Hotel Review Added Successfully",
            'Review' => $rv,
        ]);
    }
}
