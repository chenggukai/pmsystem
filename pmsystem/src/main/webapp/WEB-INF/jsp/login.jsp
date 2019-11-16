<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<link rel="stylesheet" href="<%=basePath%>/bower_components/layui/dist/css/layui.css">
</head>

<body>
	<div class="layui-container">
		<div class="layui-row">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-header">您好，请登录</div>
					<div class="layui-card-body">
						<form class="layui-form" action="" method="post">
							<div class="layui-form-item">
								<label class="layui-form-label">用户名</label>
								<div class="layui-input-block">
									<input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">密码</label>
								<div class="layui-input-block">
									<input type="password" name="pwd" placeholder="请输入" autocomplete="off" class="layui-input" lay-verify="author">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="bookBtn">登录</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<script src="<%=basePath%>/bower_components/layui/dist/layui.js"></script>
</body>
</html>