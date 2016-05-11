    </div>
    <div id="footer">
    <div class="container">
        <div class="row footer-row">
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
       
{{--     @yield('scripts') --}}