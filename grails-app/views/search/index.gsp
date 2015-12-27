<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search</title>
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

    <div class="row ">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="panel-title text-left">Top Posts</h3>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <g:render template="/user/inbox"/>
                    <g:render template="/user/inbox"/>
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
                            <h3 class="panel-title text-left">Search for :</h3>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <g:render template="/user/profilePublicPosts"/>
                    <g:render template="/user/profilePublicPosts"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>