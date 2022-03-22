@extends('auth.layouts.master')

@isset($blog)
    @section('title', 'Редактировать блог ' . $blog->title)
@else
    @section('title', 'Создать новость')
@endisset

@section('content')
    <div class="col-md-12">
        @isset($blog)
            <h1>Редактировать товар <b>{{ $blog->name }}</b></h1>
        @else
            <h1>Добавить товар</h1>
        @endisset
        <form method="POST" enctype="multipart/form-data"
              @isset($blog)
              action="{{ route('blogs.update', $blog) }}"
              @else
              action="{{ route('blogs.store') }}"
            @endisset
        >
            <div>
                @isset($blog)
                    @method('PUT')
                @endisset
                @csrf
                <div class="input-group row">
                    <label for="code" class="col-sm-2 col-form-label">Заголовок: </label>
                    <div class="col-sm-6">
                        @include('auth.layouts.error', ['fieldName' => 'title'])
                        <input type="text" class="form-control" name="title" id="titlee"
                               value="@isset($blog){{ $blog->title }}@endisset">
                    </div>
                </div>
                <br>
                <div class="input-group row">
                    <label for="name" class="col-sm-2 col-form-label">Новость: </label>
                    <div class="col-sm-6">
                        @include('auth.layouts.error', ['fieldName' => 'body'])
                        <textarea name="body" id="body" cols="72"
                                  rows="7">@isset($blog){{ $blog->body }}@endisset</textarea>
                    </div>
                </div>
                    <br>
                <div class="input-group row">
                            <label for="image" class="col-sm-2 col-form-label">Картинка: </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" name="image" id="image"
                                       value="@isset($blog){{ $blog->image }}@endisset">
                            </div>
                        </div>
                <br>

                <button class="btn btn-success">Сохранить</button>
            </div>
        </form>
    </div>
@endsection
