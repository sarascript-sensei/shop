@extends('layouts.master')

@section('title', __('main.blogs'))

@section('content')

    <div class="row">
        <style>
            body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
        </style>
        </head>
        <body class="w3-light-grey">

        <!-- w3-content defines a container for fixed size centered content,
        and is wrapped around the whole page content, except for the footer in this example -->
        <div class="w3-content" style="max-width:1400px">

            <!-- Header -->
            <header class="w3-container w3-center w3-padding-160">
                <h1><b>@lang('main.blogs')</b></h1>
            </header>

        @foreach($blogs as $blog)
            @include('layouts.cardBlog', compact('blog'))
        @endforeach
    </div>
        </div>
@endsection
