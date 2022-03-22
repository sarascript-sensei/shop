<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;
use App\Models\Blogs;
use App\Models\Category;
use App\Models\Product;
use App\Models\Property;
use Illuminate\Http\Request;
use App\Http\Requests\BlogRequest;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = Blogs::paginate(10);
        return view('auth.blogs.index', compact('blogs'));
    }


/**
 * Show the form for creating a new resource.
 *
 * @return \Illuminate\Http\Response
 */
public function create()
{
    return view('auth.blogs.form');
}

/**
 * Store a newly created resource in storage.
 *
 * @param  \Illuminate\Http\Request  $request
 * @return \Illuminate\Http\Response
 */
public function store(Request $request)
{
    $request->validate([
        'title' => 'required',
        'body' => 'required',
        'image'=>'required'
    ]);

    Blogs::create($request->all());

    return redirect()->route('blogs.index',['blogs' => Blogs::all(),])->with('success','Post created successfully.');
}

/**
 * Display the specified resource.
 *
 * @param  \App\Models\Blogs $blog
 * @return \Illuminate\Http\Response
 */
public function show(Blogs $blog)
{
    return view('auth.blogs.show',compact('blog'));
}

/**
 * Show the form for editing the specified resource.
 *
 * @param  \App\Models\Blogs $blog
 * @return \Illuminate\Http\Response
 */
public function edit(Blogs $blog)
{
    return view('auth.blogs.form',compact('blog'));
}

/**
 * Update the specified resource in storage.
 *
 * @param  \Illuminate\Http\Request  $request
 * @param  \App\Models\Blogs $blog
 * @return \Illuminate\Http\Response
 */
public function update(BlogRequest $request, Blogs $blog)
{
    $params = $request->all();

    $blog->update($params);

    return redirect()->route('blogs.index')->with('success','Post updated successfully');
}

/**
 * Remove the specified resource from storage.
 *
 * @param  \App\Models\Blogs $blog
 * @return \Illuminate\Http\Response
 */
public function destroy(Blogs $blog)
{
    $blog->delete();

    return redirect()->route('blogs.index')
        ->with('success','blog deleted successfully');
}
}
