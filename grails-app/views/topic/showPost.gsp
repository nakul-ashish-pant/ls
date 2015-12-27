<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Post</title>
</head>

<body>
<div class="col-md-6">%{--for left pane--}%

    <div class="row ">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="panel-title text-left">Trending Topics</h3>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <g:render template="/user/subscription"/>
                    <g:render template="/user/subscription"/>
                </div>
            </div>
        </div>
    </div>

    <div class="row" id="hidedenWhenNotLoggedIn">
        <div class="col-md-12 ">
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
    </div>
</div>

<div class="col-md-6 ">%{--for right pane--}%
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-body">
                    <g:render template="/topic/detailedPost"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>