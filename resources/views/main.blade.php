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

        @include('partials._footer')

    </div>



  </body>
</html>