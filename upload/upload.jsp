<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
	<!-- Bootstrap -->
    	<link href="<%=path %>/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    	 <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    	<script src="<%=path %>/js/bootstrap-3.3.7-dist/js/jquery-1.12.4.min.js"></script>
    	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    	<script src="<%=path %>/js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script language="javascript">
        function check()
        {
            if(document.formAdd.fujian.value=="")
            {
                alert("请选择文件");
                return false;
            }
            return true;
        }
    </script>
  </head>
  
  <body>
  	<div class="container">
       <form action="<%=path %>/upload/upload_re.jsp" name="formAdd" method="post"  enctype="multipart/form-data" class="form-inline">
       		<div class="form-group">
       			<div class="col-sm-10">
		           <input class="form-control" type="file" name="fujian" id="fujian" onKeyDown="javascript:alert('此信息不能手动输入');return false;" />
       			</div>
       		</div>
       		<div class="form-group">
       			<div class="col-sm-10">
		           <input class="btn btn-primary" type="submit" value="提交" onclick="return check()"/>
		        </div>   
       		</div>
       </form>
  	</div>
  </body>
</html>
