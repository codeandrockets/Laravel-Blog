@extends('main')

@section('title', 'Edit Post')

@section('content')

	<div class="row">
{{-- 	When the form submits, the route method is where the form will be submitted to  --}}
		{!! Form::model($post, ['route'=> ['post.update', $post->id], 'method'=> 'PUT']) !!}
		<div class="col-md-8">
			{{ Form::label('title', 'Title:') }}
			{{ Form::text('title', null, ["class" => 'form-control edit-form input-lg']) }}
			
			{{ Form::label('slug', 'Slug:') }}
			{{ Form::text('slug', null, ['class'=> 'form-control edit-form']) }}

			{{ Form::label('body', 'Body:') }}
			{{ Form::textarea('body', null, ["class" => 'form-control']) }}
		</div>


		<div class="col-md-4">
			<div class="well">
				<dl class="dl-horizontal">
					<dt>Created At:</dt>
					<dd>{{ date('j F o g:i a', strtotime($post->created_at)) }}<dd>
				</dl>
				<dl class="dl-horizontal">
					<dt>Updated At:</dt>
					<dd>{{ date('j F o g:i a', strtotime($post->updated_at)) }}<dd>
				</dl>
				<hr>
				<div class="row">
					<div class="col-sm-6">
						{!! Html::linkRoute('post.show', 'Cancel', array($post->id), array('class' => 'btn btn-primary btn-block')) !!}
					</div>
					<div class="col-sm-6">
						{{ Form::submit('Save Changes', ['class' => 'btn btn-success btn-block']) }}
					</div>
				</div>
			</div>
		</div>
		{!! Form::close() !!}
	</div>

@endsection