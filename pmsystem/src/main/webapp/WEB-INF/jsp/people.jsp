<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>人事资源管理系统</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css" media="all">
<style type="text/css">
            .left{
                position: absolute;
                left: 0;
                top:140px;
            }
            .left img{width:100px;height:450px}
            .right img{width:100px;height:450px}
            .right{
                position: absolute;
                right:0;
                top:140px;
            }
           #content{
           background-image: url("images/rh01-background-cloud-infra.png.jpg");
           height:620px;
           }
        </style>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header layui-bg-cyan">
			<div class="layui-logo">甲骨文</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="main">公司简介</a></li>
				<li class="layui-nav-item"><a href="">业务</a></li>
				<li class="layui-nav-item"><a href="people">员工</a></li>				
				<li class="layui-nav-item"><a href="develop">企业发展</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件管理</a>
						</dd>
						<dd>
							<a href="">消息管理</a>
						</dd>
						<dd>
							<a href="">授权管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
				<security:authentication property="name"/>
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="logout">退出</a></li>
			</ul>
		</div>


		<!-- 页面容器 -->
		<div  id="content">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
			<div class="layui-container">
				<!-- 搜索框开始 -->
				<div class="layui-card">
 					 <div class="layui-card-body">
				<form class="layui-form" id="" lay-filter="peopleSearch" method="post" action="">
					
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">员工姓名</label>
								<div class="layui-input-inline">
									<input type="text" name="ename" placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">员工部门</label>
								<div class="layui-input-block">
									<select name="tid" lay-filter="tid" id="tidSel1">
										<option value="-1">--请选择--</option>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<button class="layui-btn layuiadmin-btn-comm" data-type="reload" lay-submit="" lay-filter="peopleSearch1">
									<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
								</button>
							</div>
						</div>
					</div>
				</form>
				
				
				<!-- 搜索框结束 -->
				<!-- 数据表开始 -->
				
				<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				</div>
				<!-- 数据表结束 -->
			</div>
			
		</div>
		
		<div class="layui-footer" style="left: 0;">
			<!-- 底部固定区域 -->
			<div style="text-align: center">© xinge.com - 底部固定区域</div>
		</div>
	</div>

	<!-- 弹出层开始 -->
	<div id="peopleEditDiv" style="display: none;">
		<!-- 这里lay-filter得加上才能通过layui.form.val找到 -->
		<form class="layui-form" id="" lay-filter="editForm" method="post" action="" enctype="multipart/form-data">
			<input type="hidden" name="id"> <input type="hidden" name="photo" id="photoInput">
			<!-- 提示：如果你不想用 form，你可以换成 div 等任何一个普通元素 -->
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-block">
					<input type="text" name="ename" placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">职位</label>
				<div class="layui-input-block">
					<input type="text" name="job" placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">部门</label>
				<div class="layui-input-block">
					<select name="tid" lay-filter="tid" id="tidSearch">
						<option value="-1">--请选择--</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">工资</label>
				<div class="layui-input-block">
					<input type="text" name="salary" placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">入职日期</label>
				<div class="layui-input-block">
					<input type="text" name="hiredate" placeholder="请输入" autocomplete="off" class="layui-input" id="hiredateInput">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">头像</label>
				<div class="layui-input-block">
					<!--  -->
					<button type="button" class="layui-btn" id="photoxInput">
						<i class="layui-icon">&#xe67c;</i>上传图片
					</button>
					<img alt="" id="previewImg" src="">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="peopleSubmit">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
		
	</div>
	<!-- 弹出层结束 -->



	<script type="text/html" id="toolbarDemo">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
<security:authorize access="hasRole('ROLE_ADMIN')">
    <button class="layui-btn layui-btn-sm" lay-event="addPeople">添加</button>
</security:authorize>
  </div>
</script>

	<script type="text/html" id="barDemo">
<security:authorize access="hasRole('ROLE_ADMIN')">
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</security:authorize>
</script>


	<script src="bower_components/layui/dist/layui.js" charset="utf-8"></script>
	<script src="people/people.js"></script>


</body>
</html>