<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css" media="all">
<style type="text/css">

</style>
</head>
<body>
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header layui-bg-black">
			<div class="layui-logo">甲骨文</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="main">公司简介</a></li>
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
		<!-- 中间内容 -->
		<div class="">
			<div class="layui-carousel" id="test10">
				<div carousel-item="">
					<div>
						<img src="images/address-pic.png">
					</div>
					<a href="develop"><div>
						<img src="images/pic.png">
					</div></a>
					<div>
						<img src="images/flx-1.jpg">
					</div>
				</div>
			</div>
		</div>
		
		<!-- 中间内容结束 -->
		<div class="layui-footer layui-bg-black" style="left: 0;height:52px;">
			<!-- 底部固定区域 -->
			<div style="text-align: center">© xinge.com 欢迎您的到来</div>
		</div>
	</div>




	<script src="bower_components/layui/dist/layui.js" charset="utf-8"></script>
	<script>
	
	layui.use('carousel', function(){
	  var carousel = layui.carousel;
	  //建造实例
	  carousel.render({
	    elem: '#test10'
	    ,width: '100%' //设置容器宽度
		,height:'700px'//1140px;620px
	    ,arrow: 'always' //始终显示箭头
	    ,anim: 'fade' //切换动画方式
	  });
	});
	layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		  
		  //监听导航点击
		  element.on('nav(demo)', function(elem){
		    //console.log(elem)
		    layer.msg(elem.text());
		  });
		});
	</script>
</script>
	
</body>
</html>