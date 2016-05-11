<!DOCTYPE html>
<html lang="en">
  <head>
@include('partials._head')
  
  </head>
	
  <body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=1532576530378535";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

@include('partials._nav')


    <div class="container">

    	@include('partials._messages')
        @yield('content')


    </div>



    @include('partials._footer')
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>