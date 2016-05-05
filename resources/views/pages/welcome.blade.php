@extends('main')

@section('title', 'Home')

@section('content')

<div class="row">
    <div class="col-md-8">
        @foreach($posts as $post)
        <div class="post">
            <h3>{{ $post->title }}</h3>
            <p>{{ substr($post->body, 0, 250) }}{{ strlen($post->body) > 300 ? "..." : "" }}</p>
            <a href="{{ url('blog/'.$post->slug) }}" class="btn btn-primary">Read More</a>
        </div><hr>
        @endforeach
    </div>
    <div class="col-md-3 col-md-offset-1">
        <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div></div>
    </div>
</div>
@endsection