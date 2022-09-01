<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            @if($sku->count==0)
            @lang('main.not_available')
            @else
                <p>{{ $sku->count }} штук осталось</p>
            @endif
            <p>
            <form action="{{ route('basket-add', $sku) }}" method="POST">

                    <button type="submit" class="btn btn-primary" role="button"><i class="fa fa-book" aria-hidden="true"></i> Бронь</button>
                    <!--@lang('main.not_available')-->
                <a href="{{ route('sku',
                    [isset($category) ? $category->code :
                    !empty($sku->product->category) ? $sku->product->category->code:'' , $sku->product?$sku->product->__('code'):'' , $sku->id]) }}"
                   class="btn btn-default"
                   role="button">Описание</a>
                @csrf

            </form>
            </p>
        </div>
    </div>
</div>
