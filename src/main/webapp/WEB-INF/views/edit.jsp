<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<sf:form class="form-horizontal" modelAttribute="product"
				action="${pageContext.request.contextPath}/p" method="POST"
				enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label col-md-4">Upload a file</label>
					<div class="col-md-8">
						<sf:input type="file" path="file" class="form-control" />
					</div>
				</div>

				<div class="text-right">
					<br />
					<sf:hidden path="id" />
					<sf:hidden path="fileName" />
				</div>

				<div class="form-group">
					<div class="col-md-offset-4 col-md-4">
						<input type="submit" name="submit" value="Save"
							class="btn btn-primary" />
					</div>
				</div>
			</sf:form>
		</div>
	</div>
</body>
</html>