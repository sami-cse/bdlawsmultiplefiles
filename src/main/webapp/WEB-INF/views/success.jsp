<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	</head>
	<body>
	   
	    <div id="successMessage">
	        <strong>${messageObj}</strong>
	    </div>
	    <div id="fileUploadDiv">
	    	<a id="fileUploadFormPage" href="${pageContext.request.contextPath}/">Go To File Upload Form Page</a>
	    </div>
	</body>
</html>