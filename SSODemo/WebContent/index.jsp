<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jquery.min.js"></script>
<script type="text/javascript">

	var login = function() {
		$.ajax({
			url: 'http://172.19.43.129:8080/PodCloud/login.action',
			type: 'POST',
			dataType: 'json',
			async: true,
			data: {
				username: 'admin',
				password: '123',
				autologin: false
			},
			success:function(data, textStatus, jqXHR){
				$("#result").innerHtml = data + "<br>" + textStatus + "<br>" + jqXHR;
		    },
		    error:function(xhr,textStatus){
		    	$("#result").innerHtml = 'error' + "<br>" + xhr + "<br>" + textStatus;
		    }
		});
	}
	
</script>

</head>
<body>
	<form method="post" action="doLoginServlet">
		username:<input type="text" id="username" name="username"></br>
		password:<input type="password" id="password" name="password">
		<input type="submit" value="login">
	</form>
</body>
</html>