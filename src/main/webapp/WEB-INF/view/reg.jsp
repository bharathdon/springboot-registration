<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="container">
	<div>
		<h2>Registration form</h2>
		<hr />
	</div>

	<form role="form" class=" form-horizontal container jumbotron"
		name="regForm">

		<div class="form-group">
			<label for="firstName" class="control-label col-sm-2">User
				FirstName:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="firstName"
					maxlength="7" placeholder="Enter first name">
			</div>
			<span class="col-sm-6"><p id="errUName"></p></span>
		</div>


		<div class="form-group">
			<label for="lastName" class="control-label col-sm-2">User
				LastName:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="lastName"
					maxlength="7" placeholder="Enter last name">
			</div>
			<span class="col-sm-6"><p id="errUName"></p></span>
		</div>


		<div class="form-group">
			<label for="email" class="control-label col-sm-2">E-Mail:</label>
			<div class="col-sm-4">
				<input type="email" class="form-control" name="email"
					placeholder="someone@example.com">
			</div>
			<span class="col-sm-6"><p id="errEmail"></p></span>
		</div>

		<div class="form-group">
			<label for="pwd" class="control-label col-sm-2">Password:</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" name="password"
					maxlength="6" placeholder="Enter password">
			</div>
			<span class="col-sm-6"><p id="errPwd"></p></span>
		</div>



		<div class="col-sm-6">
			<input type="submit" value="Submit" class="btn btn-primary btn-lg"
				onClick="validator()">
		</div>
	</form>

	<script type="text/javascript">
		function firstNameValidator() {
			var firstName = document.regForm.firstName.value;
			var errUserName = document.getElementById("errUName");
			if (firstName == "" || firstName == null) {
				errUserName.innerHTML = "Provide first Name";
				errUserName.style.color = "red";
			} else {
				errUserName.innerHTML = "Your user name is: " + userName;
				errUserName.style.color = "green";
				//errUserName.style.fontFamily = "serif";
			}
		}

		function lastNameValidator() {
			var lastName = document.regForm.firstName.value;
			var errUserName = document.getElementById("errUName");
			if (lastName == "" || lastName == null) {
				errUserName.innerHTML = "Provide User Name";
				errUserName.style.color = "red";
			} else {
				errUserName.innerHTML = "Your last name is: " + userName;
				errUserName.style.color = "green";
				//errUserName.style.fontFamily = "serif";
			}
		}

		function emailValidator() {
			var email = document.regForm.email.value;
			var errEmail = document.getElementById("errEmail");
			if (email == "" || email == null) {
				errEmail.innerHTML = "Provide email";
				errEmail.style.color = "red";
			} else {
				errEmail.innerHTML = "your email id is: " + email;
			}
		}

		function passwordValidator() {
			var pwd = document.regForm.password.value;
			var confirmPwd = document.regForm.confirmPassword.value;
			var errpwd = document.getElementById("errPwd");
			var errConfirmPwd = document.getElementById("errConfirmPwd");
			if (pwd == "" || pwd == null) {
				errpwd.innerHTML = "Choose a password";
				errpwd.style.color = "red";
			} else {
				errpwd.innerHTML = "Your password is: " + pwd;
			}

		}

		function validator() {
			firstNameValidator();
			lastNameValidator();
			emailValidator();
			passwordValidator();
		}
	</script>
	<form action="/redirect" method="get">
		<a href="/redirect"> login </a>
	</form>
</body>

</html>