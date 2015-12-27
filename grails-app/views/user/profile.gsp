<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Profile</title>
</head>

<body>
<div class="col-md-6">%{--for left pane--}%

    <div class="row ">
        <div class="col-md-12">
            <g:render template="userDetails"/>
        </div>

        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-3">
                            <h3 class="panel-title text-left">Topics</h3>
                        </div>

                        <div class="col-md-6 col-md-offset-3">
                            <form action="#" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for Topics...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit">Go!</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

                <div class="panel-body">
                    <g:render template="profileTopics"/>
                    <g:render template="profileTopics"/>
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
                        <div class="col-md-3">
                            <h3 class="panel-title text-left">Posts</h3>
                        </div>

                        <div class="col-md-6 col-md-offset-3">
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
                    <g:render template="profilePublicPosts"/>
                    <g:render template="profilePublicPosts"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>