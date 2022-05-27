<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="container text-center">
		<h1>Hello user login here !</h1>

		<form:form style="max-width: 600px; margin: 0 auto;" method="post"
			action="/process_register" modelAttribute="user" >
			<div class="m-3">
				<div class="form-group row">
					<label class="col-form-label col-4">Email:</label>
					<div class="col-8">
						<input type="email" path="email" class="form-control" required="true" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-4 col-form-label">Password: </label>
					<div class="col-8">
						<input type="password" path="password" class="form-control"
							required="true" minlength="6" maxlength="10" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-4 col-form-label">First Name: </label>
					<div class="col-8">
						<input type="text" path="firstName" class="form-control"
							required="true" minlength="2" maxlength="20" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-4 col-form-label">Last Name: </label>
					<div class="col-8">
						<input type="text" path="lastName" class="form-control"
							required="true" minlength="2" maxlength="20" />
					</div>
				</div>

				<div>
					<button type="submit" class="btn btn-primary">Sign Up</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>