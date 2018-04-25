<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#fileUploadDiv {
	text-align: center;
	padding-top: 16px;
}

#fileUploadFormPage {
	text-decoration: none;
	text-align: center;
	cursor: pointer;
}

#successMessage {
	text-align: center;
	color: green;
	font-size: 25px;
	padding-top: 17px;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="col-md-6 col-md-offset-3">
			<div id="successMessage">
				<strong>${messageObj}</strong>
			</div>
			<div id="fileUploadDiv">
				<a id="fileUploadFormPage"
					href="${pageContext.request.contextPath}/">Go To File Upload
					Form Page</a>
			</div>
		</div>
	</div>

</body>
</html>



