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
	<form action="tea/addTask.action" method="post" id="addTask_form" name="addTask_form">
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label" >实训学生<span class="text-orange">*</span></label>
					<div class="col-sm-7" id="stu_select">
					
						<select class="form-control col-sm-2" name = "stuId" id="stuId" value="${stuId}" onchange="changeStu(this.value)">
							<option value="">--请选择--</option>
							<c:forEach items="${requestScope.stuList}" var="etoak">
								<option  value="${etoak.stuId}">
									<c:out value="${etoak.stuName}"></c:out>
								</option>
							</c:forEach>
						</select>
					</div>
	</div>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训题目<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="title" name="title" value="${task.title}" placeholder="实训题目">
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训内容<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<textarea cols="30" rows="5"  class="form-control" id="content" name="content" value="${task.content}" placeholder="实训内容"></textarea>
					</div>
	</div>
	<br/>
	<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">实训进度<span class="text-orange">*</span></label>
					<div class="col-sm-7">
						<textarea cols="30" rows="5"  class="form-control" id="tStep" name="tStep" value="${task.tStep}" placeholder="实训进度"></textarea>
					</div>
	</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-3">
				<button type="button" class="btn btn-app" onclick="toSubmit()">保存</button>
			</div>
			<div class=" col-sm-3">
				<input type="reset" class="btn btn-app" />
			</div>
		</div>
	</form>

<script type="text/javascript">

function toSubmit()
{
	document.addTask_form.submit();
	
}
$(function(){
	$("#stuId").val("${stuId}");
	var stuId =$("#stuId").val();
	changeStu(stuId);
	var result= "${result}";
	if(result=="success")
	{
		alert("保存成功");
	}
	
});
<%--修改状态--%>
function changeStu(value)
{
	   $("#title").val("");
		$("#content").val("");
	   $("#tStep").val("");
	if(value=="")
	{
		
		return;
	}
	$.ajax({
		   type: "POST",
		   url: "tea/queryTaskInfo.action",
		   data: "stuId="+value,
		   dataType : "json",
		   success: function(date){
			   $("#stuId").val(date.stuId);
			   $("#title").val(date.title);
		   		$("#content").val(date.content);
			   $("#tStep").val(date.tStep);
		   }
		});
}
</script>
</body>
</html>
