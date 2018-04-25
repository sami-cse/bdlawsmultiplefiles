<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>Spring MVC File Upload Example</title>
	    <style type="text/css">
    		#errorMessage {
    			text-align: center; 
    			font-size: 25px; 
    			padding-top: 17px;
    		}    		
    		#errorMessage span {
    			color: red;
    		}
    	</style>
	</head>

	<body>
	    <center>
	        <h2>Spring MVC File Upload Example</h2>
	    </center>
	    <br /> <br />
	    <div id="errorMessage">
	        <strong>Sorry, The File Was Not Successfully Upload Because Of The Following Error!</strong>
	        <span id="exceptionTrace">${exception.message}</span>
	    </div>
	</body>
</html>