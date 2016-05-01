<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Post;

class BlogController extends Controller
{
    public function getSingle($slug) {
    	//get from db based on slug
    	$post = Post::where('slug', '=', $slug)->first();
    	// return a view and pass the object into it
    	return view('blog.single')->withPost($post);
    }
}
