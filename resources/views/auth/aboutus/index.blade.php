@extends('auth.layouts.master')

@section('title', 'О нас')

@section('content')
    <div class="col-md-12">
        <h1>О нас</h1>
        <table class="table">
            <tbody>
            <tr>
                <th>
                    Поле
                </th>
                <th>
                    Значение
                </th>
            </tr>
            @foreach($aboutUs as $about)
                <tr>
                    <td>ID</td>
                    <td>{{ $about->id}}</td>
                </tr>
                <tr>
                    <td>Заголовок 1</td>
                    <td>{{ $about->title1 }}</td>
                </tr>
                <tr>
                    <td>Подзаголовок 1</td>
                    <td>{{ $about->subtitle1 }}</td>
                </tr>
                <tr>
                    <td>Текст 1</td>
                    <td>{{ $about->body1 }}</td>
                </tr>
                <tr>
                    <td>Картинка 1</td>
                    <td><img src="{{($about->image1) }}" height="240px"></td>
                </tr>
                <tr>
                    <td>Заголовок 2</td>
                    <td>{{ $about->title2 }}</td>
                </tr>
                <tr>
                    <td>Подзаголовок 2</td>
                    <td>{{ $about->subtitle2 }}</td>
                </tr>
                <tr>
                    <td>Текст 2</td>
                    <td>{{ $about->body2 }}</td>
                </tr>
                <tr>
                    <td>Картинка 2</td>
                    <td><img src="{{($about->image2) }}" height="240px"></td>
                </tr>
                    <td></td>
                    <td>
                        <div class="btn-group" role="group">
                            <form action="{{ route('aboutUs.destroy', $about) }}" method="POST">
                                <a class="btn btn-success" type="button"
                                   href="{{ route('aboutUs.show', $about) }}">Открыть</a>
                                <a class="btn btn-warning" type="button"
                                   href="{{ route('aboutUs.edit', $about) }}">Редактировать</a>
                                @csrf
                                @method('DELETE')
                                <input class="btn btn-danger" type="submit" value="Удалить"></form>
                        </div>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{ $aboutUs->links() }}
        <a class="btn btn-success" type="button" href="{{ route('aboutUs.create') }}">Добавить информацию</a>
    </div>
@endsection
