<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<style type="text/css">
	*{padding:0;margin: 0;}
	input{outline: none;border:none;}
	#container{width:1540px;height:715px;margin: 0 auto;background: url("<%=basePath%>/images/xxhduiah.png") no-repeat;}
 	.username{width:350px;height:35px;margin-left:562px;margin-top:176px;} 
 	.password{width:350px;height:35px;margin-left:562px;margin-top:55px;} 
 	.submit{width:400px;height:50px;margin-left:562px;top:45px;position:relative;border-radius:7px;color:white;background-color: #6A9D67}	 */
</style>

</head>
<body>
	<div id="container">
		<form class="layui-form" action="" method="post">							
		<input type="text" name="name" class="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
		<input type="password" name="pwd" class="password" placeholder="请输入" autocomplete="off" class="layui-input"></br>						
		<input type="submit" value="登录" class="submit">							
	</form>
	</div>
</body>
</html>