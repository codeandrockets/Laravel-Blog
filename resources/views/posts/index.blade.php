@extends('main')

@section('title', 'All Posts')

@section('content')
	<div class="row">
		<div class="col-md-10">
			<h1>All Posts</h1>
		</div>
		<div class="col-md-2">
			<a href="{{ route('post.create') }}" class="btn btn-block btn-primary btn-spacing">Create a Post</a>
		</div>
		<div class="col-md-12">
			<hr>
		</div>
	</div>
@endsection