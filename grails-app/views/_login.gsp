<form method="post" action="/j_spring_security_check">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6">
                <span class="label label-primary">Username/Email</span>
            </div>
            <div class="col-md-5 col-md-offset-1">
                <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2"
                       name="j_username">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6">
                <span class="label label-primary">Password</span>
            </div>
            <div class="col-md-5 col-md-offset-1">
                <input type="password" class="form-control" placeholder="Password"
                       aria-describedby="sizing-addon2" name="j_password">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6">
                <span class="label label-primary">Remember Me</span>
                <input type="checkbox" name="_spring_security_remember_me" id="remember_me">
            </div>
            <div class="col-md-5 col-md-offset-1">
                <button class="btn btn-primary" type="submit" name="login" value="submit">Login</button>
            </div>
        </div>
    </div>
</form>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-5">
            <span class="label label-primary">Login from Scoial Networks</span>
        </div>

        <div class="col-md-5 col-md-offset-2">
            <a href="#" style="text-decoration: none; color:inherit;">
                <i class="fa fa-facebook-official fa-lg"></i>
            </a>
            <a href="#" style="text-decoration: none; color:inherit;">
                <i class="fa fa-twitter-square fa-lg"></i>
            </a>
            <a href="#" style="text-decoration: none; color:inherit;">
                <i class="fa fa-google-plus-square fa-lg"></i>
            </a>
        </div>
    </div>
</div>