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
	<form action="tea/addTask.action" method="post" id="query_s11tu">
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label" >当周实训状态<span class="text-orange">*</span></label>
					<div class="col-sm-7" id="stu_select">
					
						<div class="col-sm-7">
						<input type="text" readonly="true" class="form-control" id="title" name="title" value="${tTtu.eStatus=='1'?'校内实训':'校外实训'}" placeholder="实训题目">
					</div>
					</div>
	</div>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训题目<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<input type="text" readonly="true" class="form-control" id="title" name="title" value="${task.title}" placeholder="实训题目">
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训内容<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<textarea readonly="true" cols="30" rows="5" name="weibo" class="form-control" id="content" name="content" value="${task.content}" placeholder="实训内容">
						<c:out value="${task.content}"></c:out>
						</textarea>
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训进度<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<textarea readonly="true" cols="30" rows="5" name="weibo" class="form-control" id="tStep" name="tStep" value="${task.tStep}" placeholder="实训进度">
						
						<c:out value="${task.tStep}"></c:out>
						</textarea>
					</div>
	</div>
	</form>

<script type="text/javascript">
	
</script>
</body>
</html>
