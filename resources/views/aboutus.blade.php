
@extends('layouts.master')

@section('title', __('main.about_us'))

@section('content')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <style>
        .logo {
            font-size: 200px;
        }
        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }
    </style>
    <header class="w3-container w3-center w3-padding-160">
        <h1><b>@lang('main.about_us')</b></h1>
    </header>

    <div class="w3-row w3-padding-64" id="about">
        <div class="w3-col m6 w3-padding-large w3-hide-small">
            @foreach($aboutUs as $about)
            <img src="{{$about->image1}}" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
        </div>

        <div class="w3-col m6 w3-padding-large">
            <h1 class="w3-center">{{$about->title1}}</h1><br>
            <h5 class="w3-center">{{$about->subtitle1}}</h5>
            <p class="w3-large w3-text-grey w3-hide-medium">{{$about->body1}}</p>
        </div>
    </div>

    <hr>

    <!-- Menu Section -->
    <div class="w3-row w3-padding-64" id="menu">
        <div class="w3-col l6 w3-padding-large">
            <h1 class="w3-center">{{$about->title2}}</h1><br>
            <h4>{{$about->subtitle2}}</h4>
            <p class="w3-text-grey">{{$about->body2}}</p><br>
        </div>

        <div class="w3-col l6 w3-padding-large">
            <img src="{{$about->image2}}" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
        </div>
    </div>

    <hr>
    @endforeach
@endsection
