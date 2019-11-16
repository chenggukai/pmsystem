<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css" media="all">
 <style type="text/css">          
           video{
           	position: absolute;
           	z-index:1;
           	top:0;          	
           	}   
           	#content{
           	display:block;           	
           	z-index:2;     
            	
           	}
           	.layui.text{
           	color:white;
           	}     
        </style>
</head>
<body>
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header layui-bg-black">
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
		<!-- 中间内容 -->
		<div class="layui-container" id="content">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				<legend>简约时间线：大事记</legend>
			</fieldset>
			<ul class="layui-timeline">
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2016年，layui 首个版本发布</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">2015年，layui 孵化</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>
					</div></li>
			</ul>
			</div>
		<video id="video" autoplay="" loop="" preload="" muted="" x-webkit-airplay="true" airplay="allow" webkit-playsinline="true" playsinline="true" src="../video/index-video.mp4" class="video1 video" width="100%" height="100%"></video>
		
		<!-- 中间内容结束 -->
		
		<div class="layui-footer" style="left: 0;">
			<!-- 底部固定区域 -->
			<div style="text-align: center">© xinge.com - 底部固定区域</div>
		</div>
	</div>




	<script src="bower_components/layui/dist/layui.js" charset="utf-8"></script>
</body>
</html>