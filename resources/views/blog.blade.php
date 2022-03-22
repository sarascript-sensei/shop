@extends('layouts.master')

@section('title', __('main.blogs'))

@section('content')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <h1>{{ $blog->title}}</h1>

    <img src="{{$blog->image }}">
    <br>
    <br>
    <p>{{ $blog->body }}</p>
@endsection
