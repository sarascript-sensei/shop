@extends('auth.layouts.master')

@isset($aboutU)
    @section('title', 'Редактировать о нас ' . $aboutU->title1)
@else
    @section('title', 'Создать')
@endisset

@section('content')
    <div class="col-md-12">
        @isset($aboutU)
            <h1>Редактировать о нас <b>{{ $aboutU->title1 }}</b></h1>
        @else
            <h1>Добавить товар</h1>
        @endisset
        <form method="POST" enctype="multipart/form-data"
              @isset($aboutU)
              action="{{ route('aboutUs.update', $aboutU) }}"
              @else
              action="{{ route('aboutUs.store') }}"
            @endisset
        >
            <div>
                @isset($aboutU)
                    @method('PUT')
                @endisset
                @csrf
                <div class="input-group row">
                    <label for="code" class="col-sm-2 col-form-label">Заголовок 1: </label>
                    <div class="col-sm-6">
                        @include('auth.layouts.error', ['fieldName' => 'title1'])
                        <input type="text" class="form-control" name="title1" id="title1"
                               value="@isset($aboutU){{ $aboutU->title1 }}@endisset">
                    </div>
                </div>
                <br>
                    <div class="input-group row">
                        <label for="code" class="col-sm-2 col-form-label">Подзаголовок 1: </label>
                        <div class="col-sm-6">
                            @include('auth.layouts.error', ['fieldName' => 'subtitle1'])
                            <input type="text" class="form-control" name="subtitle1" id="subtitle1"
                                   value="@isset($aboutU){{ $aboutU->subtitle1 }}@endisset">
                        </div>
                    </div>
                    <br>
                    <div class="input-group row">
                        <label for="code" class="col-sm-2 col-form-label">Текст 1: </label>
                        <div class="col-sm-6">
                            @include('auth.layouts.error', ['fieldName' => 'body1'])
                            <input type="text" class="form-control" name="body1" id="body1"
                                   value="@isset($aboutU){{ $aboutU->body1 }}@endisset">
                        </div>
                    </div>
                    <br>
                <div class="input-group row">
                    <label for="image" class="col-sm-2 col-form-label">Картинка 1: </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="image1" id="image1"
                               value="@isset($aboutU){{ $aboutU->image1 }}@endisset">
                    </div>
                </div>
                <br>

                    <div class="input-group row">
                        <label for="code" class="col-sm-2 col-form-label">Заголовок 2: </label>
                        <div class="col-sm-6">
                            @include('auth.layouts.error', ['fieldName' => 'title2'])
                            <input type="text" class="form-control" name="title2" id="title2"
                                   value="@isset($aboutU){{ $aboutU->title2 }}@endisset">
                        </div>
                    </div>
                    <br>
                    <div class="input-group row">
                        <label for="code" class="col-sm-2 col-form-label">Подзаголовок 2: </label>
                        <div class="col-sm-6">
                            @include('auth.layouts.error', ['fieldName' => 'subtitle2'])
                            <input type="text" class="form-control" name="subtitle2" id="subtitle2"
                                   value="@isset($aboutU){{ $aboutU->subtitle2 }}@endisset">
                        </div>
                    </div>
                    <br>
                    <div class="input-group row">
                        <label for="code" class="col-sm-2 col-form-label">Текст 2: </label>
                        <div class="col-sm-6">
                            @include('auth.layouts.error', ['fieldName' => 'body2'])
                            <input type="text" class="form-control" name="body2" id="body2"
                                   value="@isset($aboutU){{ $aboutU->body2 }}@endisset">
                        </div>
                    </div>
                    <br>
                    <div class="input-group row">
                        <label for="image" class="col-sm-2 col-form-label">Картинка 2: </label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="image2" id="image2"
                                   value="@isset($aboutU){{ $aboutU->image2 }}@endisset">
                        </div>
                    </div>
                    <br>
                <button class="btn btn-success">Сохранить</button>
            </div>
        </form>
    </div>

@endsection
