<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@lang('main.online_shop'): @yield('title')</title>

    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/starter-template.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="{{ route('index') }}">@lang('main.online_shop')</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li @routeactive('index')><a href="{{ route('index') }}">@lang('main.all_products')</a></li>
                <li @routeactive('categor*')><a href="{{ route('categories') }}">@lang('main.categories')</a>
                </li>
                @if (Auth::check())
                <li @routeactive('basket*')><a href="{{ route('basket') }}">@lang('main.basket')</a></li>
                @endif
                <li @routeactive('aboutus*')><a href="{{ route('about') }}">@lang('main.about_us')</a></li>
                <li @routeactive('contact-us*')><a href="{{ route('contact-us') }}">@lang('main.contact-us')</a></li>
                <li @routeactive('blog*')><a href="{{ route('blogs') }}">@lang('main.blogs')</a></li>
                <!-- <li><a href="{{ route('reset') }}">@lang('main.reset_project')</a></li> -->
                <li><a href="{{ route('locale', __('main.set_lang')) }}">@lang('main.set_lang')</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                @guest
                    <li><a href="{{ route('login') }}">@lang('main.login')</a></li>
                @endguest

                @auth
                    @admin
                    <li><a href="{{ route('categories.index') }}">@lang('main.admin_panel')</a></li>
                    @else
                    <!-- <li><a href="{{ route('person.orders.index') }}">@lang('main.my_orders')</a></li> -->
                    @endadmin
                    <li><a href="{{ route('get-logout') }}">@lang('main.logout')</a></li>
                @endauth
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="starter-template">
        @if(session()->has('success'))
            <p class="alert alert-success">{{ session()->get('success') }}</p>
        @endif
        @if(session()->has('warning'))
            <p class="alert alert-warning">{{ session()->get('warning') }}</p>
        @endif
        @yield('content')
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-6"><p>Категории товаров</p>
                <ul>
                    @foreach($categories as $category)
                        <li><a href="{{ route('category', $category->code) }}">{{ $category->__('name') }}</a></li>
                    @endforeach
                </ul>
            </div>
            <!-- <div class="col-lg-6"><p>Самые популярные товары</p>
                <ul>
                    @foreach ($bestSkus as $bestSku)
                        <li><a href="{{ route('sku',
                [!empty($bestSku->product->category) ? $bestSku->product->category->code:'' , $bestSku->product->code, $bestSku]) }}">
                                {{ $bestSku->product->__('name') }}</a></li>
                    @endforeach
                </ul>
            </div> -->
        </div>
    </div>
</footer>

</body>
</html>
