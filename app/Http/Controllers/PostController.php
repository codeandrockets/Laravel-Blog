<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Post;
// Allows you to use the session class, without this you will get an error
use Session;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //store all posts into a variable
        $posts = Post::orderBy('id', 'desc')->paginate(5);
        //pass the variable into the view
        return view('posts.index')->withPosts($posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate the data, setting the request into the request variable
        $this->validate($request, array(
            'title' => 'required|max:255',
            'body' => 'required'
        ));

        //Store the data in database 
        $post = new Post;

        $post->title = $request->title;
        $post->body = $request->body;
        $post->save();

        // flash makes the message temporary, only here for one session
        Session::flash('success', 'The blog post has been created');

        return redirect()->route('post.show', $post->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        return view('posts.show')->with('post', $post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //get the post from the database
         $post = Post::find($id);
        //return a view
         return view('posts.edit')->withPost($post);
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
        // validate the data 
        $this->validate($request, array(
            'title' => 'required|max:255',
            'body' => 'required'
        ));

        //Save the data to the database 
        $post = Post::find($id);
        $post->title = $request->input('title');
        $post->body = $request->input('body');

        $post->save();

        //redirect with flash data to posts.show
        Session::flash('success', 'This post was successfully updated.');
        return redirect()->route('post.show', $post->id);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->delete();

        Session::flash('success', 'The Post was Deleted.');
        return redirect()->route('post.index');
    }
}
