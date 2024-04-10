<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/qiantai.css"/>
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           
	           document.getElementById("indicator").style.display="block";
			   loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,1,callback);
	        }
	        
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        var url="<%=path %>/index?type=index";
			        window.location.href=url;
			    }
			    
			}
	</script>
</head>
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>






<div id="Main" class="container">
  <div class="MainBg">
    <div class="Product W1000 margin">
         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
              <form action="<%=path %>/userReg.action" name="userLogin" method="post" class="form-horizontal">
              	<div class="form-group">	
					<label class="col-md-2 control-label">账号：</label>
					<div class="col-md-8">
				         <input type="text" name="userName" class="form-control" style="width: 288px;"/>
					</div>         
     			</div>									         
     			<div class="form-group">	
			        <label class="col-md-2 control-label">密码：</label>
			        <div class="col-md-8">
			        	<input type="password" name="userPw" class="form-control" style="width: 288px;"/>
			        </div>  
			    </div>  
			    <div class="form-group">
			    	<div class="col-md-2 col-md-offset-2">
			       		<input type="button" class=" btn btn-success" value="登陆" onclick="login()" style="width: 100px;"/>
			    	</div>
			    	<div class="col-md-2">
			       		<input type="reset" class=" btn btn-warning" value="重置" style="width: 100px;"/>
			    	</div>
                   <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			    </div>    
               </form>           
		 </div>
    </div>
  </div>
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
