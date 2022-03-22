<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<!--<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <img src="{{($blog->image) }}">
        <div class="caption">
            <h3>{{ $blog->title }}</h3>
            <p>
                <a href="{{route('blog', $blog->id) }}"
                   class="btn btn-default"
                   role="button">@lang('main.more')</a>
                @csrf
            </p>
        </div>
    </div>
</div>
-->

    <!-- Grid -->
    <div class="w3-row">

        <!-- Blog entries -->
        <div class="w3-content w3-padding-large w3-margin-top">
            <!-- Blog entry -->
            <div class="w3-card-4 w3-margin w3-white">
                <img src="{{$blog->image}}" alt="Nature" style="width:100%">
                <div class="w3-container">
                    <h3><b>{{$blog->title}}</b></h3>
                    <h5><span class="w3-opacity">{{$blog->created_at}}</span></h5>
                </div>

                <div class="w3-container">
                    <p>{{\Illuminate\Support\Str::limit($blog->body,100)}}</p>
                    <div class="w3-row">
                            <div class="button-wrapper">
                            <a href="{{route('blog', $blog->id) }}" class="btn btn-default" role="button">@lang('main.more')</a></b>
                            <br>
                            <br>

                        </div>
                    </div>
                </div>
            </div>
            <hr>


