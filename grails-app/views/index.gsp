<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to LinkSharing</title>
</head>

<body>
<div class="col-md-4 ">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Login</h3>

        </div>

        <div class="panel-body">
            <g:render template="/login"/>
        </div>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Register</h3>
        </div>

        <div class="panel-body">
            <g:render template="/register"/>
        </div>
    </div>
</div>

<div class="col-md-7 col-md-offset-1">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title text-left">Recent Shares</h3>
        </div>

        <div class="panel-body">
            %{--<i class="fa fa-spinner fa-pulse fa-4x"></i>--}%
            <g:render template="/postInfo"/>
        </div>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-5">
                    <div class="panel-title text-left">Top Posts</div>
                </div>

                <div class="col-md-4 col-md-offset-3">
                    <div class="btn-group text-right">
                        <div class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                               style="text-decoration: none; color:inherit;">Today <b class="caret"></b></a>

                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">1 Week</a></li>
                                <li><a href="#">1 Month</a></li>
                                <li><a href="#">1 year</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel-body">
            %{--<i class="fa fa-spinner fa-pulse fa-4x"></i>--}%
            <g:render template="/postInfo"/>
        </div>
    </div>
</div>
</body>
</html>







