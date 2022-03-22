@extends('auth.layouts.master')

@section('title', 'Новость ' . $aboutUs->title1)

@section('content')
    <div class="col-md-12">
        <h1>{{ $aboutUs->title1 }}</h1>
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
                <td>{{ $aboutUs->id}}</td>
            </tr>
            <tr>
                <td>Заголовок 1</td>
                <td>{{ $aboutUs->title1 }}</td>
            </tr>
            <tr>
                <td>Подзаголовок 1</td>
                <td>{{ $aboutUs->subtitle1 }}</td>
            </tr>
            <tr>
                <td>Текст 1</td>
                <td>{{ $aboutUs->body1 }}</td>
            </tr>
            <tr>
                <td>Картинка 1</td>
                <td><img src="{{($aboutUs->image1) }}" height="240px"></td>
            </tr>
            <tr>
                <td>Заголовок 2</td>
                <td>{{ $aboutUs->title2 }}</td>
            </tr>
            <tr>
                <td>Подзаголовок 2</td>
                <td>{{ $aboutUs->subtitle2 }}</td>
            </tr>
            <tr>
                <td>Текст 2</td>
                <td>{{ $aboutUs->body2 }}</td>
            </tr>
            <tr>
                <td>Картинка 2</td>
                <td><img src="{{($aboutUs->image2) }}" height="240px"></td>
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
