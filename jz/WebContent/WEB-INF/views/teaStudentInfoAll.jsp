<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link href="easyui/css/themes/default/easyui.css" type="text/css" rel="stylesheet"/>
<link href="easyui/css/themes/icon.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="easyui/js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>

	
</head>

<body>

	
		<table id="ts">
		
		</table>
	
	<!-- easyui的分页 -->
	<script type="text/javascript">
			$(function(){
				$("#ts").datagrid({
					title : "学生信息",
					width : 1000,
					url : "queryStudentAll.action",
					pagination : true,
					pageSize : 10,
					pageList : [10,20] ,
					columns : [[
						{title:"班级" , field:"Classid"},
						{title:"学号" , field:"stuId"},
						{title:"姓名" , field:"stuName"},
						{title:"校内指导老师" , field:"teacherId"},
						{title:"实训单位" , field:"exeCompany"},
						{title:"备注" , field:"note"},
						{title:"实训状态" , field:"eStatus",formatter:function(value,row,index){
							return value==0?"校内实训":"校外实训";}}
					]],
					toolbar : "#tools",
				});
			});
		</script>
		
		<script type="text/javascript">
			
			function editStudent(){
				var array = $("#ts").datagrid("getSelections");
				alert(array.length);
				if(array.length==1){
					var eStatus = array[0].eStatus;
		    		var stuId = array[0].stuId;
					$.ajax({
			 			type:"post",//请求的方法
			 			url:"updateStatue.do",//请求的地址
			 			data:"eStatus="+eStatus+"&stuId="+stuId,//请求参数
			 			dataType:"JSON",//返回类型
			 			success:function(data){
							if(data){
								$.messager.alert({
									title:"提示" ,
									msg:"修改成功",
									top:"300"
									});
								$("#ts").datagrid("reload");
							}else{
								$.messager.alert({
									title:"提示" ,
									msg:"修改失败",
									top:"300"
									});
							}
						}
			 		});
					
				}else{
					$.messager.alert({
							title:"警告" , 
							msg:"只能选择一条数据进行修改",
							top:"300"
							});
				}
			}
			function removeUser(){
				var array = $("#ts").datagrid("getSelections");
				var ids = "";
				$.each(array , function(i,student){
					ids += student.stuId+",";
				});
				
				$.messager.confirm("警告" , "确认要删除这些用户信息吗?" , function(result){
					if(result){
						$.post("delUserById.do" , {ids : ids} , function(data){
							if(data){
								$.messager.alert({
									title:"提示" , 
									msg:"删除成功",
									top:"300"
								});
								$("#ts").datagrid("reload");
							}else{
								$.messager.alert({
									title:"提示" ,
									msg:"删除失败",
									top:"300"
									});
							}
						} , "json");
					}
				});

			}
			
		</script>
		<div id="editWin" class="easyui-window"
			data-options="title:'修改实训状体',width:400,height:300,closed:true,top:100">
			<form id="editForm" method="post">
				<select id="root" class="easyui-combobox" name="root" style="width:200px;">   
	   			    <option value="1">校内实训</option>   
	    		    <option value="0">校外实训</option>   
				</select> 
				<input type="hidden" name="stuId" id="stuId"/>
			</form>
			<button id="editbt">修改</button>
		</div>
			<script type="text/javascript">
				
			</script>

	
</body>
</html>
