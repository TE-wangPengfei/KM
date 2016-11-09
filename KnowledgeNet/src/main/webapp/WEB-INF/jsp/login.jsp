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
	<title>Sign In</title>
	<link href="/resources/css/viewCss/login.css" rel="stylesheet" type="text/css" media="screen,print">
</head>
<script type="text/javascript">
</script>
<body>
	<div class="containerbox">
		<div class="container">
			<div class="row column_box">
				<div class="container" style="margin-top:40px">
					<div class="row">
						<div class="col-sm-6 col-md-4 col-md-offset-4">
							<div class="panel panel-default">
								<div class="panel-heading">
									<strong> Sign in to continue</strong>
								</div>
								<div class="panel-body">
									<form role="form" action="#" method="POST">
										<fieldset>
											<div class="row">
												<div class="center-block">
													<img class="profile-img" src="/resources/img/logo1.png" alt="">
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12 col-md-10  col-md-offset-1 ">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="glyphicon glyphicon-user"></i>
															</span>
															<input class="form-control" placeholder="Username" name="loginname" type="text" autofocus>
														</div>
													</div>
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="glyphicon glyphicon-lock"></i>
															</span>
															<input class="form-control" placeholder="Password" name="password" type="password" value="">
														</div>
													</div>
													<div class="form-group">
														<input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
													</div>
												</div>
											</div>
										</fieldset>
									</form>
								</div>
								<div class="panel-footer">
									Don't have an account! <a href="/userMangement/registration" onClick=""> Sign Up Here </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="fragments/footer.jsp" />
</html>