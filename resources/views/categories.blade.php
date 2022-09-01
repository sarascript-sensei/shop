@extends('layouts.master')

@section('title', __('main.all_categories'))

@section('content')
    @foreach($categories as $category)
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <div class="panel">
            <a href="{{ route('category', $category->code) }}">
                <img src="{{($category->image) }}">
                <h2>{{ $category->__('name') }}</h2>
            </a>
            <p>
                {{ $category->__('description') }}
            </p>
        </div>
    @endforeach
@endsection
