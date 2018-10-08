<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>校外实训过程管理系统</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap-treeview.min.css" 
  type="text/css"></link>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    	.page-header{
    		margin-top:2px;
    		margin-bottom:0px;
    		padding-bottom:2px;
    	}
    	.navbar{
    	margin-bottom:2px;
    	}
    	
    </style>

  </head>
  <body>
    <div class="page-header" align="center">
  		<h1>校外实训过程管理系统</h1>	
	</div>
<nav class="navbar navbar-default" role="navigation">
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="index.jsp">首页</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li class="dropdown">
	           <a href="index.jsp" >退出系统</a>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- 正文部分 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<div id="treeview_et"></div>
		</div>
		<div class="col-md-9">
			<iframe src=""
			name="etframe" frameborder="0" 
			width="100%" height="1000px"
			></iframe>
		</div>
	</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-treeview.min.js"></script>
    <script>
     var defaultData = [
          {
            text: '学生管理',
            href: 'javascript:void(0);',
            tags: ['4'],
           
            nodes: [
				
               {
                   text: '实训任务',
                   href: 'stu/stuLookTask.action',
                   tags: ['0']
               	} ,
                {
                text: '填写周记',
                href: 'stu/toAddJournal.action',
                tags: ['0']
            	} 
                ,{
                text: '修改资料',
                href: 'stu/toUpdateStu.action',
                tags: ['0']
              } 
            ]
          }];
    	$(function(){
        $('#treeview_et').treeview({
         	 data: defaultData,
            enableLinks: true,
        });
        
        //$(".list-group-item a").attr("target","etframe");
    	});
    	
  	
  
    </script>
    
  </body>
</html>