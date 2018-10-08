<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>实训任务书</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<!-- 导入bootstrapjs -->
	<script src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table.js"></script>
	<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
	
</head>

<body>
	<form action="addStudent.action">
	<table>
		<tr>
			<td>班级：</td>
	  		<td><input type="text" name="class"/></td>
	  	</tr>
		<tr>
			<td>学号：</td>
			<td><input type="text" name="id"/></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="name"/></td>
		</tr>
		<tr>
			<td>校内指导老师：</td>
			<td><input type="text" name="Teacherid"/></td>
		</tr>
		<tr>
			<td>实训单位：</td>
			<td><input type="text" name="Execompany"/></td>
		</tr>
		<tr>
			<td>备注：</td>
			<td><input type="text" name="Note"/></td>
		</tr>
		<tr>
			<td>
		<input type="submit" value="保存"></td>
		</tr>
	</table>
	</form>
<script type="text/javascript">
</script>
</body>
</html>
