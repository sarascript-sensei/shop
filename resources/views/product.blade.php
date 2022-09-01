@extends('layouts.master')

@section('title', __('main.product'))

@section('content')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <div class="container bootdey">
        <div class="col-md-12">
            <section class="panel">
                <div class="panel-body">
                    <div class="col-md-6">
                        <div class="pro-img-details">
                            <img src="{{($skus->product->image) }}" width="550px" height="550px" alt="">
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="col-md-6">
                        <h2 class="pro-d-title">
                                {{ $skus->product->__('name') }}
                        </h2>
                        <p>
                            {{ $skus->product->__('description') }}
                        </p>
                        <div class="product_meta">
                            <span class="posted_in"> <strong>Категории:</strong> <a rel="tag" href="{{ route('category', $skus->product->category->code) }}">{{ $skus->product->category->name }}</a></span>
                            @isset($skus->product->properties)
                                @foreach ($skus->propertyOptions as $propertyOption)
                                    <span class="tagged_as"><strong>{{ $propertyOption->property->__('name') }}:</strong>{{ $propertyOption->__('name') }}</span>
                                @endforeach
                            @endisset
                        </div>
                        <div class="m-bot15"> <strong>@lang('product.price'): </strong> <span class="amount-old"></span>  <span class="pro-price"> {{ $skus->price }} {{ $currencySymbol }}</span></div>
                        <br>
                        <br>
                        <p>
                        @if($skus->isAvailable())
                            <form action="{{ route('basket-add', $skus->product) }}" method="POST">
                                <button type="submit" class="btn btn-success" role="button">@lang('product.add_to_cart')</button>

                                @csrf
                            </form>
                        @else

                            <span>@lang('product.not_available')</span>
                            <br>
                            <span>@lang('product.tell_me'):</span>
                            <div class="warning">
                                @if($errors->get('email'))
                                    {!! $errors->get('email')[0] !!}
                                @endif
                            </div>
                            <form method="POST" action="{{ route('subscription', $skus) }}">
                                @csrf
                                <input type="text" name="email"></input>
                                <button type="submit">@lang('product.subscribe')</button>
                            </form>
                        @endif
                        </p>
                    </div>
                </div>
            </section>
        </div>
    </div>


@endsection
