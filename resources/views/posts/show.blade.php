@extends('main')

@section('title', 'View Post')

@section('content')
	
	<div class="row">
		<div class="col-md-8">
			<h1>{{ $post->title }}</h1>
			<p class="lead">{{ $post->body }}</p>
		</div>


		<div class="col-md-4">
			<div class="well">
				<dl class="dl-horizontal">
					<label>Url:</label>
					<a href="{{ route('blog.single', $post->slug) }}">{{ url('blog/'.$post->slug) }}</a>
				</dl>	
				<dl class="dl-horizontal">
					<label>Created At:</label>
					<p>{{ date('j F o g:i a', strtotime($post->created_at)) }}</p>
				</dl>
				<dl class="dl-horizontal">
					<label>Updated At:</label>
					<p>{{ date('j F o g:i a', strtotime($post->updated_at)) }}</p>
				</dl>
				<hr>
				<div class="row">
					<div class="col-sm-6">
						{!! Html::linkRoute('post.edit', 'Edit', array($post->id), array('class' => 'btn btn-primary btn-block')) !!}
					</div>
					<div class="col-sm-6">
						{!! Form::open(['route'=>['post.destroy', $post->id], 'method' => 'DELETE']) !!}	
						{!! Form::submit('Delete', ['class'=> 'btn btn-danger btn-block']) !!}
						{!! Form::close() !!}
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						{!! Html::linkRoute('post.index', 'All Posts', [], array('class' => 'btn btn-info btn-block show-btn')) !!}
					</div>
				</div>
			</div>
		</div>
	</div>
	
@endsection