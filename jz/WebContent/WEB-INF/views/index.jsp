<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>校外实训过程管理系统</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.page-header {
	margin-top: 2px;
	margin-bottom: 0px;
	padding-bottom: 2px;
}
.navbar {
	margin-bottom: 2px;
}
body {
	background-image: url(img/index.jpg) no-repeat;
}
</style>
</head>

<body>
<div class="container" style="width:35%">
	<div style="margin-top:15%;-left:40%" class="jumbotron">
		<h2>校外实训过程管理系统</h2>
		<div class="row" style="margin-left:20%" >
			<form style="border-left:30%"action="login.action" method ="post">
				<br/>
				<div style="border-left:10%"class="input-group" >
					<input type="text" class="form-control"
						placeholder="账号" aria-describedby="basic-addon2" name="userId">
				</div>
				<br/>
				<div class="input-group" text-align="left">
					<input type="password" class="form-control"
						placeholder="密码" aria-describedby="basic-addon2" name="passWord">
				</div>
				<br/>
				<div class="input-group" text-align="left">
					<select class="form-control col-sm-2" name = "role">
					<option>请选择身份</option>
						<option value="adm">管理员</option>
						<option value="tea">老师</option>
						<option value="stu">学生</option>
					</select>
				</div>

				<br/>
				<div class="input-group" align="left">
					<input class="btn btn-default" type="submit" value="登录">
					<input class="btn btn-default" type="reset" value="重置">
				</div>
				
				
			</form>
	</div>
</div>
	<!-- <div class="page-header" align="center">
		<h1>
			校外实训过程管理系统
		</h1>
	</div>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		Brand and toggle get grouped for better mobile display
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"  href="#"><span id="e_title">校外实训过程管理</span></a>
		</div>

		Collect the nav links, forms, and other content for toggling
		<div class="collapse navbar-collapse"
		</div>
	</div>
	</nav>
	正文部分
	<div class="container-fluid  margin-left:100px">
		<div class="row" style="margin-left:40%">
			<form action="login.action" method ="post">
				<br/>
				<div class="input-group" text-align="left">
					<input type="text" class="form-control"
						placeholder="账号" aria-describedby="basic-addon2" name="userId">
				</div>
				<br/>
				<div class="input-group" text-align="left">
					<input type="password" class="form-control"
						placeholder="密码" aria-describedby="basic-addon2" name="passWord">
				</div>
				<br/>
				<div class="input-group" text-align="left">
					<select class="form-control col-sm-2" name = "role">
					<option>请选择身份</option>
						<option value="adm">管理员</option>
						<option value="tea">老师</option>
						<option value="stu">学生</option>
					</select>
				</div>

				<br/>
				<div class="input-group">
					<input class="btn btn-default" type="submit" value="登录">
					<input class="btn btn-default" type="reset" value="重置">
				</div>
				
				
			</form>
		</div>
	</div> -->
	<!-- 导入bootstrapjs -->
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(function(){
		var logionResult="${logionResult}";
		if(logionResult=="false")
		{
			alert("登录失败!");
		}
	});
	</script>
</body>
</html>
