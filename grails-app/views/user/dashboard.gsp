<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
</head>

<body>
<div class="col-md-6">%{--for left pane--}%

    <div class="row " >
        <div class="col-md-12" >
                <g:render template="userDetails"/>
        </div>
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="panel-title text-left">Subscriptions</h3>
                        </div>

                        <div class="col-md-2 col-md-offset-4">
                            <a href="#" class="text-right" style="text-decoration: none;color: inherit">View All</a>
                        </div>
                    </div>

                </div>

                <div class="panel-body">
                    <g:render template="subscription"/>
                    <g:render template="subscription"/>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="panel-title text-left">Trending Topics</h3>
                        </div>

                        <div class="col-md-2 col-md-offset-4">
                            <a href="#" class="text-right" style="text-decoration: none;color: inherit">View All</a>
                        </div>
                    </div>

                </div>

                <div class="panel-body">
                    <g:render template="subscription"/>
                    <g:render template="subscription"/>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-md-6 ">%{--for right pane--}%
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title text-left">Inbox</h3>
                </div>
                <div class="panel-body">
                    <g:render template="inbox"/>
                    <g:render template="inbox"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>