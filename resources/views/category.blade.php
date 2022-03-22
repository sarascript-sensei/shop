@extends('layouts.master')

@section('title', __('main.category') . $category->__('name'))

@section('content')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <h1>
        {{$category->__('name')}}
    </h1>
    <p>
        {{ $category->__('description') }}
    </p>
    <div class="row">
        @foreach($category->products->map->skus->flatten() as $sku)
            @include('layouts.card', compact('sku'))
        @endforeach
    </div>
@endsection
