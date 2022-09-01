<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use Illuminate\Http\Request;
use App\Http\Requests\AboutUsRequest;

class AboutUsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aboutUs = AboutUs::paginate(10);
        return view('auth.aboutus.index', compact('aboutUs'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.aboutus.form');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $params = $request->all();

        AboutUs::create($params);

        return redirect()->route('aboutUs.index',['aboutUs' => AboutUs::all(),])->with('success','Post created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AboutUs $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function show(AboutUs $aboutUs)
    {
        return view('auth.aboutus.show',compact('aboutUs'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AboutUs $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function edit(AboutUs $aboutU)
    {
        return view('auth.aboutus.form',compact('aboutU'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AboutUs $aboutU
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AboutUs $aboutU)
    {
        $params = $request->all();

        $aboutU->update($params);

        return redirect()->route('aboutUs.index')->with('success','Post updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AboutUs $aboutU
     * @return \Illuminate\Http\Response
     */
    public function destroy(AboutUs $aboutU)
    {
        $aboutU->delete();

        return redirect()->route('aboutUs.index')
            ->with('success','blog deleted successfully');
    }
}
