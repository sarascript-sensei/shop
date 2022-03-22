<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <img src="{{($sku->product?$sku->product->image:'') }}" alt="{{ $sku->product?$sku->product->__('name'):'' }}">
        <div class="caption">
            <h3>{{ $sku->product?$sku->product->__('name'):'' }}</h3>
            @isset($sku->product->properties)
                @foreach ($sku->propertyOptions as $propertyOption)
                    <h4>{{ $propertyOption->property->__('name') }}: {{ $propertyOption->__('name') }}</h4>
                @endforeach
            @endisset
            <p>{{ $sku->price }} {{ $currencySymbol }}</p>
            <p>
            <form action="{{ route('basket-add', $sku) }}" method="POST">

                    <button type="submit" class="btn btn-primary" role="button">@lang('main.add_to_basket')</button> -->
                    <!--@lang('main.not_available')-->
                <a href="{{ route('sku',
                    [isset($category) ? $category->code :
                    !empty($sku->product->category) ? $sku->product->category->code:'' , $sku->product?$sku->product->__('code'):'' , $sku->id]) }}"
                   class="btn btn-default"
                   role="button">@lang('main.more')</a>
                @csrf

            </form>
            </p>
        </div>
    </div>
</div>
