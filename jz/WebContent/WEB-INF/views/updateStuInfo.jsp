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
	<form action="stu/updateStu.action" method="post" id="query_s11tu">
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">电话<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="phone" name="phone" value="${stu.phone}" placeholder="电话">
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">邮箱<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="email" name="email" value="${stu.email}" placeholder="邮箱">
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">qq号<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="qq" name="qq" value="${stu.qq}" placeholder="qq号">
					</div>
	</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-12" >
				<button type="submit" class="btn btn-app">保存</button>
			</div>
		</div>
	</form>

<script type="text/javascript">
</script>
</body>
</html>
