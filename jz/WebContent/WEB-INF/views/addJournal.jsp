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
<base href="<%=basePath%>">
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
	<div>
		<table width="100%" class="table-striped">
			<c:forEach items="${requestScope.jList}"
		var="etoak" >
		<tr width="100%">
			<td width="100%" align="center"><a href="stu/queryJournal.action?week=${etoak.week}" target="etoak_frame">第<c:out value="${etoak.week}"></c:out>周  周总结<a/></td>
		</tr>
		</c:forEach>
		<tr width="100%">
			<td width="100%">
			<iframe name ="etoak_frame" id="etoak_frame" width="100%" height="500" src="stu/queryJournal.action?week=${week}">
				
			</iframe>
			</td>
		</tr>
		</table>
	</div>
<script type="text/javascript">
</script>
</body>
</html>
