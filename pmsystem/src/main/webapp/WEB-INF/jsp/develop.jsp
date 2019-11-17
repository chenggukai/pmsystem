<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
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
		<div class="layui-header layui-bg-cyan">
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
		<div class="layui-container" id="content">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				<legend>经典 名人：名言</legend>
			</fieldset>
			<ul class="layui-timeline">
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">自己不能胜任的事情，切莫轻易答应别人，一旦答应了别人，就必须实践自己的诺言。——华盛顿</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">君子在下位则多谤，在上位则多誉；小人在下位则多誉，在上位则多谤。——柳宗元</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">你若要喜爱你自己的价值，你就得给世界创造价值。——歌德</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">君子赠人以言，庶人赠人以财。——荀况</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">时间会刺破青春表面的彩饰，会在美人的额上掘深沟浅槽；会吃掉稀世之珍！天生丽质，什么都逃不过他那横扫的镰刀。——莎士比亚</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">如果我们想交朋友，就要先为别人做些事——那些需要花时间、体力、体贴、奉献才能做到的事。——卡耐基</div>
					</div></li>
				<li class="layui-timeline-item"><i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
					<div class="layui-timeline-content layui-text">
						<div class="layui-timeline-title">对人不尊敬，首先就是对自己的不尊敬。——惠特曼</div>
					</div></li>
			</ul>
			</div>
		<video id="video" autoplay="" loop="" preload="" muted="" x-webkit-airplay="true" airplay="allow" webkit-playsinline="true" playsinline="true" src="../video/index-video.mp4" class="video1 video" width="100%" height="100%"></video>
		
		<!-- 中间内容结束 -->
		
		<div class="layui-footer layui-bg-cyan" style="left: 0;height:52px;">
			<!-- 底部固定区域 -->
			<div style="text-align: center">© xinge.com 欢迎您的到来</div>
		</div>
	</div>




	<script src="bower_components/layui/dist/layui.js" charset="utf-8"></script>
	<script>
layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>
</body>
</html>