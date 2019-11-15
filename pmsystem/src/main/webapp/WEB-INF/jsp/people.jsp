<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>人事资源管理系统</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css" media="all">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">甲骨文</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">公司简介</a></li>
				<li class="layui-nav-item"><a href="">业务</a></li>
				<li class="layui-nav-item"><a href="">员工</a></li>
				<li class="layui-nav-item"><a href="">企业责任</a></li>
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
				<li class="layui-nav-item"><a href="javascript:;"> <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 新哥
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">退了</a></li>
			</ul>
		</div>
	
		

		<div class="layui-container">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<!-- 搜索框开始 -->
				<form class="layui-form" id="" lay-filter="bookSearch" method="post" action="">
					<div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="app-content-comment">
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">书名</label>
								<div class="layui-input-inline">
									<input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">类型</label>
								<div class="layui-input-block">
									<select name="tid" lay-filter="tid" id="tidSel1">
										<option value="-1">--请选择--</option>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<button class="layui-btn layuiadmin-btn-comm" data-type="reload" lay-submit="" lay-filter="bookSearch">
									<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
								</button>
							</div>
						</div>
					</div>
				</form>
				<!-- 搜索框结束 -->
				<table class="layui-hide" id="test" lay-filter="test"></table>
			</div>
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© xinge.com - 底部固定区域
		</div>
	</div>




 
<script type="text/html" id="toolbarDemo">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
  </div>
</script>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
              
          
<script src="bower_components/layui/dist/layui.js" charset="utf-8"></script>
<script src="book/people.js"></script>
 

</body>
</html>