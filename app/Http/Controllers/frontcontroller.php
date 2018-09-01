<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Pages;
use \App\post;

class frontcontroller extends Controller
{
    public function home(){

        return view('pages.home');

    }

    public function about(){

        $page=Pages::where('title','About Us')->take(1)->get();
        return view('pages.about',compact('page'));
        
    }

    public function work(){
        $work = post::orderBy('id', 'desc')->paginate(8);
        return view('pages.listing',compact('work'));
    }

    public function details($id){
        $work = post::find($id);
        return view('pages.details',compact('work'));
    }

}
