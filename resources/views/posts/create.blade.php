@extends('main')

@section('title', 'Create New Post')

@section('stylesheets')
	{!! Html::style('css/parsley.css') !!}
@endsection

@section('content')

	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<h1>Create New Post</h1>
			<hr>
			<!-- Using named routes -->
			<!-- include parsley validation -->
			{!! Form::open(array('route' => 'post.store', 'data-parsley-validate' => '')) !!}
			    {{ Form::label('title', 'Title:') }}
			    <!-- null is value of inner text, class is the css class -->
			    {{ Form::text('title', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}

			    {{ Form::label('body', 'Body:') }}
			    {{ Form::textarea('body', null, array('class' => 'form-control', 'required' => '')) }}

			    {{ Form::submit('Create Post', array('class' => 'btn btn-success')) }}
			{!! Form::close() !!}
		</div>
	</div>

@endsection

@section('scripts')
	{!! Html::script('js/parsley.min.js') !!}
@endsection