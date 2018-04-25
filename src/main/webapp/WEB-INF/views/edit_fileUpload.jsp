<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br>
<br>
<br>
<br>
<!-- Page Content -->
<div class="container">
	<div class="row text-center">
		<div class="col-md-8">
			<%-- <form:form
				action="${pageContext.request.contextPath}/edit"
				method="post" commandName="fileUpload" enctype="multipart/form-data">
				<form:hidden path="id" value="${fileUpload.id}" />
				<div class="form-group">
					<form:input path="fileName" class="form-Control"
						value="${fileUpload.fileName}" type="file"/>
				</div>
				<br/>
				<br/>
				<input type="submit" value="submit" class="btn btn-primary">
				<br/>
				<br/>
				<a href="<c:url value="/" />" class="btn btn-default" type="button">Cancel</a>
			</form:form> --%>
			<form id="fileUploadForm" method="post"
				action="${pageContext.request.contextPath}/edit"
				enctype="multipart/form-data">
				<input type="hidden" value="${fileUpload.id}">
				<table id="fileUploadFormBeanTable" border="0" width="80%">

					<tr>
						<td>Act:</td>
						<td><input id="actId" type="text" name="actId" value="${fileUpload.act}" size="65" /></td>
					</tr>
					<tr>
						<td>Attachment:</td>
						<td><input id="pickUpFileAttachment" type="file"
							name="attachFileObj" value="${fileUpload.fileName}" size="60"
							multiple="multiple" /> <span id="fileUploadErr">Please
								Upload A File!</span></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input id="fileUploadBtn"
							type="submit" value="Upload" /><br /> <br /> <a
							href="<c:url value="/" />" class="btn btn-default" type="button">Cancel</a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>



