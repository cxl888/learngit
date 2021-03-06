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
<link href="css/bootstrap-table.css" rel="stylesheet">
<!-- 导入bootstrapjs -->
	<script src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table.js"></script>
	<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
	
</head>
<body>

	 <div id="table443" class="table table-striped">
		<table id='tableList'>
		
		</table>
	</div>
<script type="text/javascript">

	 $(function () {

		//1.初始化Table
		var tableInit = new TableInit();
		tableInit.Init();

		//2.初始化Button的点击事件
		/* var oButtonInit = new ButtonInit();
		oButtonInit.Init(); */

		});


		var TableInit = function () {
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function () {
		$('#tableList').bootstrapTable({
		url: 'selectStu.action', //请求后台的URL（*）
		method: 'post', //请求方式（*）
		sortOrder: "asc", //排序方式
		
		 height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		columns: [{
			field: 'classId',
			title: '班级'
		},
		{
			field: 'stuId',
			title: '学号'
		},
		
		 {
			field: 'stuName',
			title: '姓名'
		}, 
		{
			field: 'eStatus',
			title: '实训状态',
			formatter:	FormatterStatus
		},
		{
			field: 'teacherId',
			title: '校内指导教师'
		},
		{
			field: 'exeCompany',
			title: '实训单位'
		},
		{
			field: 'note',
			title: '备注'
		}
		,
		{
			field: 'stuId',
			title: '变更实习状态',
			formatter: operateFormatter
		}
		]
		});
		};

		//得到查询的参数
		oTableInit.queryParams = function (params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
		limit: params.limit, //页面大小
		offset: params.offset, //页码
		sdate: $("#stratTime").val(),
		edate: $("#endTime").val(),
		sellerid: $("#sellerid").val(),
		orderid: $("#orderid").val(),
		CardNumber: $("#CardNumber").val(),
		maxrows: params.limit,
		pageindex:params.pageNumber,
		portid: $("#portid").val(),
		CardNumber: $("#CardNumber").val(),
		tradetype:$('input:radio[name="tradetype"]:checked').val(),
		success:$('input:radio[name="success"]:checked').val(),
		};
		return temp;
		};
		return oTableInit;
	};
	
	<%--table操作列--%>
	function operateFormatter(value, row, index) {
		return [
			'<a class="btn btn-info btn-sm" href="javascript:void(0)" title="修改状态" onclick="changeStatus(',
				
				value,
			')">',
			'修改状态',
			'</a>  '
		].join('');
	}
	
	<%--当status为1是显示校外，其他显示校内--%>
	function FormatterStatus(value, row, index) {
		if(value=='1')
		{
			return [
					'校外实训'
				].join('');
		}else
		{
			return [
					'校内实训'
				].join('');
		}
		
	}
	
	<%--修改状态--%>
	function changeStatus(value)
	{
		$.ajax({
			   type: "POST",
			   url: "admin/updateStuStatus.action",
			   data: "stuId="+value,
			   success: function(msg){
			     alert( "修改成功");
			     location.reload();
			   }
			});
	}
	</script>
</body>
</html>
