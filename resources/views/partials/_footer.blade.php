    </div>
    <div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <ul id="footerlinks">
                    <li><a href="/">Home</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/blog">Blog</a></li>
                    <li><a href="/contact">Contact</a></li>
                </ul>
            </div>
            <div class="col-md-6 social-group">
                <img class="social-icon" {{ HTML::image("img/pinterest.png")}}
                <img class="social-icon" {{ HTML::image("img/twitter.png")}}
                <img class="social-icon" {{ HTML::image("img/google.png")}}
                <img class="social-icon" {{ HTML::image("img/youtube.png")}}
                <img class="social-icon" {{ HTML::image("img/facebook.png")}}
                <img class="social-icon" {{ HTML::image("img/instagram.png")}}
            </div>
            <div class="col-md-3 form-footer ">
                <form>
                    <label>Join Our Mailing List</label>
                    <input class="form-control" type="text">
                    <button class="btn-default btn-sm btn-footer">Sign Up</button>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            	<p class="footer-info">Copyright 2016</p>
            </div>
        </div>
        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    @yield('scripts')