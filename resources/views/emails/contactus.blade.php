@extends('auth.layouts.master')

@section('title', 'Запросы')

@section('content')
    <div class="col-md-12">
        <h1>Запросы пользователей</h1>
        <table class="table">
            <tbody>
            <tr>
                <th>
                    #
                </th>
                <th>
                    Email
                </th>
                <th>
                    Имя
                </th>
                <th>
                    Суть
                </th>
                <th>
                    Сообщение
                </th>
                <th>
                    Когда отправлен
                </th>
                <th>
                    Действия
                </th>
            </tr>
            @foreach($contactus as $contact_us)
                <tr>
                    <td>{{ $contact_us->id}}</td>
                    <td>{{ $contact_us->email }}</td>
                    <td>{{ $contact_us->name }}</td>
                    <td>{{ $contact_us->subject}}</td>
                    <td>{{ $contact_us->message }}</td>
                    <td>{{ $contact_us->created_at->format('H:i d/m/Y') }}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <form action="{{ route('contactus.destroy', $contact_us) }}" method="POST">
                            <a class="btn btn-warning" type="button"
                               href="https://gmail.com">Связаться</a>
                                @csrf
                                @method('DELETE')
                                <input class="btn btn-danger" type="submit" value="Удалить"></form>
                        </div>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{ $contactus->links() }}
    </div>
@endsection

