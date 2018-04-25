<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#fileUploadErr").hide();

		// Hide The Error Message When The Attachment Btn Is Clicked.
		$('#pickUpFileAttachment').click(function(eObj) {
			$("#fileUploadErr").hide();
		});

		// Validating Whether The Attachment Is Uploaded Or Not.
		$('#fileUploadBtn').click(function(eObj) {
			var file = $("#pickUpFileAttachment").map(function() {
				return $(this).val().trim() ? true : false;
			}).get();
			if (file.includes(true)) {
				// Do Nothing...!                    
			} else {
				$("#fileUploadErr").css({
					'color' : 'red',
					'font-weight' : 'bold'
				}).show();
				eObj.preventDefault();
			}
		});
	});
</script>
<style type="text/css">
#fileUploadBtn {
	float: left;
	margin-top: 22px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<form id="fileUploadForm" method="post" action="uploadFile"
				enctype="multipart/form-data">
				<table id="fileUploadFormBeanTable" border="0" width="80%" class="table">
					<tr>
						<td>Act:</td>
						<td><input id="actId" type="text" name="actId" size="65" /></td>
					</tr>
					<tr>
						<td>Attachment:</td>
						<td><input id="pickUpFileAttachment" type="file"
							name="attachFileObj" size="60" multiple="multiple" /> <span
							id="fileUploadErr">Please Upload A File!</span></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input id="fileUploadBtn"
							type="submit" value="Upload" class="btn btn-primary"/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>

