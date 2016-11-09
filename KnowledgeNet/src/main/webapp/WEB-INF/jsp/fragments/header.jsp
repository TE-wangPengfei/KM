<%@ page language="java" contentType="text/html; charset=utf-8"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css" media="screen,print">
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen,print">
<link href="/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" media="screen,print">
<script type="text/javascript" src="/resources/js/jquery-1.12.4.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/bootstrap-datetimepicker.min.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/locales/bootstrap-datetimepicker.ja.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/viewJS/common.js" charset="utf-8"></script>

<!-- navbar-inverse -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #AFEEEE;"> 
    <div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="#">
            	<img alt="" style="height: 50px;" src="/resources/img/logo1.png"/>
            </a> 
        </div> 
        <div style="float: left;">
        	<ul class="nav navbar-nav">
        		<li><a href="#"><span class="glyphicon glyphicon-home"></span>Info</a></li>
        		<li><a href="#"><span class="glyphicon glyphicon-th"></span>Classify</a></li>
        		<li><a href="#"><span class="glyphicon glyphicon-tree-conifer"></span>Group</a></li>
        		<li><a href="#"><span class="glyphicon glyphicon-user"></span>Experts</a></li>
        		<li><a href="/fileSearch"><span class="glyphicon glyphicon-search"></span>Search</a></li>
        		<li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span>Telephone</a></li>
        	</ul>
        	<form class="navbar-form navbar-left" role="search">
        		<div class="form-group">
	                <input type="text" class="form-control" size="25" placeholder="Search">
	            </div>
        	</form>
        	<button type="submit" class="btn btn-primary navbar-btn">search</button>
        </div>
        <div style="float: right;">
	        <ul class="nav navbar-nav"> 
	            <li><a href="/userMangement/registration"><span class="glyphicon glyphicon-user"></span> Registration</a></li> 
	            <li><a href="/userMangement/login"><span class="glyphicon glyphicon-log-in"></span> Sign in</a></li> 
	        </ul> 
        </div>
    </div> 
</nav>
<div id="alert_wait" style="display:none;">
	<div class="wait_bg"></div>
	<div class="wait_img"></div>
</div>
