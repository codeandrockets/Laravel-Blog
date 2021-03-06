<div class="container">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">        
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="."><img id="logo" {{ HTML::image('img/logo.png')}}</a>

    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav main-nav">
        <li class="{{ Request::is('/') ? "active" : "" }}"><a href="/">Home</a></li>
        <li class="{{ Request::is('about') ? "active" : "" }}"><a href="/about">About</a></li>
        <li class="{{ Request::is('blog') ? "active" : "" }}"><a href="/blog">Blog</a></li>
        <li class="{{ Request::is('contact') ? "active" : "" }}"><a href="/contact">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       @if (Auth::check())
          <li class='dropdown'>
          <a href='#' class='dropdown-toggle' data-toggle='dropdown' role="button" aria-haspopup="true" aria-expanded="false">My Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/post">Posts</a></li>
            <li><a href="{{ url('/logout') }}">Logout</a></li>
          </ul>
        </li>
        @else
        <ul class="nav navbar-nav navbar-right">
          <li class="login"><a href="{{ url('/login') }}">Login</a></li>
        </ul>  
        @endif
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
