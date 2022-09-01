@extends('auth.layouts.master')

@section('title', 'Варианты свойств')

@section('content')
    <div class="col-md-12">
        <h1>Варианты свойств</h1>
        <table class="table">
            <tbody>
            <tr>
                <th>
                    ID
                </th>
                <th>
                    Свойство
                </th>
                <th>
                    Название
                </th>
                <th>
                    Действия
                </th>
            </tr>
            @foreach($propertyOptions as $propertyOption)
                @if($propertyOption->property_id == $property->id)
                <tr>
                    <td>{{ $propertyOption->id }}</td>
                    <td>{{ $property->name }}</td>
                    <td>{{ $propertyOption->name }}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <form action="{{ route('property-options.destroy', [$property, $propertyOption]) }}" method="POST">
                                <a class="btn btn-success" type="button" href="{{ route('property-options.show', [$property, $propertyOption]) }}">Открыть</a>
                                <a class="btn btn-warning" type="button" href="{{ route('property-options.edit', [$property, $propertyOption]) }}">Редактировать</a>
                                @csrf
                                @method('DELETE')
                                <input class="btn btn-danger" type="submit" value="Удалить"></form>
                        </div>
                    </td>
                </tr>
                @else
                @endif
            @endforeach
            </tbody>
        </table>
        {{ $propertyOptions->links() }}
        <a class="btn btn-success" type="button"
           href="{{ route('property-options.create', $property) }}">Добавить вариант свойства</a>
    </div>
@endsection
