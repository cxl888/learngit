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
		<form action="stu/addJournal.action" method="post" >
		<input type="hidden" value="${week}" name="week" id="week">
		<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">本周工作总结<span class="text-orange">*</span></label>
						<div class="col-sm-7">
							<textarea cols="30" rows="5"  class="form-control" id="content" name="content" value="${content}" placeholder="本周工作总结"><c:out value="${content}"></c:out></textarea>
						</div>
		</div>
		<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">要求的支持和工作建议<span class="text-orange">*</span></label>
						<div class="col-sm-7">
							<textarea cols="30" rows="5" class="form-control" id="supportAdvice" name="supportAdvice" value="${supportAdvice}" placeholder="要求的支持和工作建议"><c:out value="${supportAdvice}"></c:out></textarea>
						</div>
		</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">下周工作安排<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<textarea cols="30" rows="5"  class="form-control" id="nextWork" name="nextWork" value="${nextWork}" placeholder="下周工作安排"><c:out value="${nextWork}"></c:out></textarea>
					</div>
	</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-3">
				<button type="submit" class="btn btn-app">保存</button>
			</div>
			<div class=" col-sm-3">
				<input type="reset" class="btn btn-app" />
			</div>
		</div>
	</form>
<script type="text/javascript">
</script>
</body>
</html>
