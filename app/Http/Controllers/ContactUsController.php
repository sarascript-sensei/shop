<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\Contact;

class ContactUSController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function contactUS()
    {
        return view('contact-us');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function contactSaveData(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'subject' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);

        Contact::create($request->all());


        session()->flash('success', __('main.successContact'));
        return redirect()->route('index');
    }
}
