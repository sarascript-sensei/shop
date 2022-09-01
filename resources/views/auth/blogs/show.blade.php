@extends('auth.layouts.master')

@section('title', 'Новость ' . $blog->title)

@section('content')
    <div class="col-md-12">
        <h1>{{ $blog->title }}</h1>
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
            <tr>
                <td>ID</td>
                <td>{{ $blog->id}}</td>
            </tr>
            <tr>
                <td>Заголовок</td>
                <td>{{ $blog->title }}</td>
            </tr>
            <tr>
                <td>Новость</td>
                <td>{{ $blog->body }}</td>
            </tr>
            <tr>
                <td>Картинка</td>
                <td><img src="{{($blog->image) }}" height="240px"></td>
            </tr>
            <!-- <tr>
                <td>Лейблы</td>
                <td>
                </td>
            </tr> -->
            </tbody>
        </table>
    </div>
@endsection
