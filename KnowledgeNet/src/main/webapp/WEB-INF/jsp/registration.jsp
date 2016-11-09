<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html lang="ja">
<jsp:include page="fragments/header.jsp" />
<meta http-equiv="X-UA-Compatible" content="IE=8" /> 
<head>
	<title>Registration</title>
	<link href="/resources/css/viewCss/registration.css" rel="stylesheet" type="text/css" media="screen,print">
</head>
<script type="text/javascript">
</script>
<body>
	<div class="containerbox top">
		<div class="container">
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Create account</strong>
					</div>
					<div class="panel-body">
						<form method="POST" action="/userMangement/createuser" role="form" name="registrationForm">
							<div class="form-group">
								<label class="control-label" for="userName">User name</label>
								<input id="userName" name="userName" maxlength="50" placeholder="Username" class="form-control required" autofocus/>
							</div>
							<div class="form-group">
								<label class="control-label" for="email">Email</label>
								<input id="email" name="email" type="email"  placeholder="email" maxlength="50" class="form-control required">
							</div>
							<div class="form-group">
								<label class="control-label" for="userPassword">Password</label>
								<input id="userPassword" name="userPassword" type="password" maxlength="25" class="form-control required" placeholder="at least 6 characters">
							</div>
							<div class="form-group">
								<label class="control-label" for="userPasswordagain">Password again</label>
								<input id="userPasswordagain" name="userPasswordagain" type="password" maxlength="25" class="form-control required">
							</div>
							<div class="form-group">
								<button id="signupSubmit" type="submit" class="btn btn-primary btn-block">Create your account</button>
							</div>
							<div class="form-group">
								By creating an account, you agree to our <a href="#">Terms of Use</a> and our <a href="#">Privacy Policy</a>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<p>Already have an account? <a href="/userMangement/login">Sign in</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
// 		$("form :input.required").each(function () {
// 	        var $required = $("<strong class='high'>*</strong>");
// 	        $(this).parent().append($required);
// 	    });
	
		var fouseOut = $("form :input").blur(function(){
			var $parent = $(this).parent();
			$parent.find(".msg").remove();
			$(this).removeAttr("style");
			if($(this).is("#userName")){
				if($.trim(this.value) == "" || $.trim(this.value).length < 6){
					$(this).attr("style","border-color: red");
					var $required = $("<strong class='high'>*</strong>");
			        $(this).parent().append($required);
					var errorMsg = " Please input at least 6 characters！";
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else {
					var okMsg=" Input correct";
					$parent.find(".high").remove();
					$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
				}
			}
			
			if($(this).is("#email")){
				if($.trim(this.value) == "" || ($.trim(this.value) != "" && !/.+@.+\.[a-zA-Z]{2,4}$/.test($.trim(this.value)))){
					$(this).attr("style","border-color: red");
					var errorMsg = " Please input the mail adress！";
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else {
					var okMsg=" Input correct";
					$parent.find(".high").remove();
					$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
				}
			}
			
			if($(this).is("#userPassword")){
				if($.trim(this.value) == "" || $.trim(this.value).length < 6){
					$(this).attr("style","border-color: red");
					var $required = $("<strong class='high'>*</strong>");
			        $(this).parent().append($required);
					var errorMsg = " Please input at least 6 characters！";
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else {
					var okMsg=" Input correct";
					$parent.find(".high").remove();
					$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
				}
			}
			
			if($(this).is("#userPasswordagain")){
				if($.trim(this.value) == "" || $.trim(this.value).length < 6){
					$(this).attr("style","border-color: red");
					var $required = $("<strong class='high'>*</strong>");
			        $(this).parent().append($required);
					var errorMsg = " Please input at least 6 characters！";
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else if($.trim(this.value) != $.trim($("#userPassword").val())){
					var errorMsg=" Please input the same password!";
					$parent.find(".high").remove();
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else {
					var okMsg=" Input correct";
					$parent.find(".high").remove();
					$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
				}
			}
		});
	</script>
</body>
<jsp:include page="fragments/footer.jsp" />
</html>