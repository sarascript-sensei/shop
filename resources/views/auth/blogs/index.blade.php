@extends('auth.layouts.master')

@section('title', 'Блоги')

@section('content')
    <div class="col-md-12">
        <h1>Товары</h1>
        <table class="table">
            <tbody>
            <tr>
                <th>
                    #
                </th>
                <th>
                    Заголовок
                </th>
                <th>
                    Текст
                </th>
                <th>
                    Создано
                </th>
            </tr>
            @foreach($blogs as $blog)
                <tr>
                    <td>{{$blog->id}}</td>
                    <td>{{ $blog->title }}</td>
                    <td>{{ $blog->body }}</td>
                    <td>{{ $blog->created_at->format('H:i d/m/Y') }}</td>
                    <td></td>
                    <td>
                        <div class="btn-group" role="group">
                            <form action="{{ route('blogs.destroy', $blog) }}" method="POST">
                                <a class="btn btn-success" type="button"
                                   href="{{ route('blogs.show', $blog) }}">Открыть</a>
                                <a class="btn btn-warning" type="button"
                                   href="{{ route('blogs.edit', $blog) }}">Редактировать</a>
                                @csrf
                                @method('DELETE')
                                <input class="btn btn-danger" type="submit" value="Удалить"></form>
                        </div>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <a class="btn btn-success" type="button" href="{{ route('blogs.create') }}">Добавить новость</a>
    </div>
@endsection
