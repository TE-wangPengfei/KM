<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html lang="ja">

<meta http-equiv="X-UA-Compatible" content="IE=8" /> 
<head>
	<title>Registration</title>
	<link href="/resources/css/viewCss/registration.css" rel="stylesheet" type="text/css" media="screen,print">
</head>
<script type="text/javascript">
</script>
<jsp:include page="fragments/header.jsp" />
<body>
	<div class="containerbox">
		<div class="container boxWidth">
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Create account</strong>
					</div>
					<div class="panel-body">
						<form method="POST" role="form" name="registrationForm" id="registrationForm">
<%-- 							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
							<div id="errorMsg" style="display: none;"></div>
							<div class="form-group">
								<label class="control-label" for="userName">User name</label>
								<input id="userName" name="userName" maxlength="50" placeholder="Username" class="form-control required"/>
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
								<button id="signupSubmit" type="button" class="btn btn-primary btn-block">Create your account</button>
							</div>
							<div class="form-group">
								By creating an account, you agree to our <span style="color: blue;">Terms of Use</span> and our <span style="color: blue;">Privacy Policy</span>
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
	<script type="text/javascript" src="/resources/js/viewJS/registration.js" charset="utf-8"></script>
</body>
<jsp:include page="fragments/footer.jsp" />
</html>