@extends('main')

@section('title', 'Contact')

@section('content')

<div class="row">
    <div class="col-md-12 contact-section">
        <h1>Contact Us</h1>
        <hr>
        <form>
            <div class="form-group">
                <label name="email">Email:</label>
                <input name="email" id="email" class="form-control">
            </div>
            <div class="form-group">
                <label name="subject">Subject:</label>
                <input name="subject" id="subject" class="form-control">
            </div>
            <div class="form-group">
                <label name="message">Message:</label>
                <textarea name="massage" id="massage" class="form-control"></textarea>
            </div>
            <input type="submit" value="Send" class="btn btn-success">
        </form>
    </div>
</div>

@endsection