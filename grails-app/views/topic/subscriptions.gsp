<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>All Subscriptions</title>
</head>

<body>
<div class="col-md-6">%{--for left pane--}%

    <div class="row ">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="panel-title text-left">Topic :</h3>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <g:render template="/user/subscription"/>
                    <g:render template="/user/subscription"/>
                    <g:render template="/user/subscription"/>
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
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="panel-title text-left">Posts : </h3>
                        </div>
                        <div class="col-md-6 col-md-offset-2">
                            <form action="#" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for Posts...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit">Go!</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <g:render template="/user/inbox"/>
                    <g:render template="/user/inbox"/>
                    <g:render template="/user/inbox"/>
                    <g:render template="/user/inbox"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

