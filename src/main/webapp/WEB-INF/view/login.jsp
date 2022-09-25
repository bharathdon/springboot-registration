<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.modal-content {
	background-color: darkcyan;
}

.btn-link {
	color: white;
}

.modal-heading h2 {
	color: #ffffff;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-heading">
				<h2 class="text-center">Login page</h2>
			</div>
			<hr />
			<div class="modal-body">
				<form action="/property" method="post" class="dto">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-user"></span>
							</span> <input type="text" name="email" class="form-control"
								placeholder="User email" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-lock"></span>
							</span> <input type="password" class="form-control" name="password"
								placeholder="Password" />

						</div>

					</div>

					<div class="col-sm-6">
						<input type="submit" value="Submit" class="btn btn-primary btn-lg">
					</div>

				</form>
			</div>
		</div>
	</div>

	
</body>
</html>