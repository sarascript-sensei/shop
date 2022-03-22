<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
        $contactus = Contact::paginate(10);
        return view('emails.contactus', compact('contactus'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Contact  $contactus
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contactus)
    {
        $contactus->delete();
        return redirect()->route('emails.contactus')->with('success','blog deleted successfully');
    }
    /*public function show(Order $order)
    {
        $skus = $order->skus()->withTrashed()->get();
        return view('auth.orders.show', compact('order', 'skus'));
    }*/
}

