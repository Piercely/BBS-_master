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
	<script type="text/javascript" src="<%=path %>/js/popup.js"></script>	
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

    <script type="text/javascript">
		    function check1()
		    {
		        if(document.form1.loginname.value=="")
		        {
		            alert("请输入账号");
		            return false;
		        }
		        
		        if(document.form1.loginname.value.length<6)
				{
				    alert("账号不能小于6位");
				    return false;
				}
				
				
		        if(document.form1.loginpw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        
		        if(document.form1.loginpw.value.length<6)
				{
				    alert("密码不能小于6位");
				    return false;
				}
				if(document.form1.loginpw1.value=="")
		        {
		            alert("请输入确认密码");
		            return false;
		        }
		        
		        if(document.form1.loginpw.value !=document.form1.loginpw1.value)
		        {
		            alert("2次密码不一致");
		            return false;
		        }
				
		        document.form1.submit();
		    }
		    
		    function up()
	        {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	        }
	</script>
</head>
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>

<div id="Main" class="container">
	  <div class="MainBg">
	    <div class="Product W1000 margin">
	         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
	             <form action="<%=path %>/user?type=userReg" name="form1" method="post" class="form-horizontal">
	             	<div class="form-group">
						<label class="col-md-2 control-label">账号：</label>
						<div class="col-md-8">
						    <input type="text" class="form-control"  name="loginname"/>
					    </div>
					</div>         
					<div class="form-group">
						     <label class="col-md-2 control-label">   密码：</label>
						     <div class="col-md-8">
						         <input type="password" name="loginpw" class="form-control"  value=""/>
						     </div>    
					</div>         
					<div class="form-group">
						      <label class="col-md-2 control-label">  确认密码：</label>
						      <div class="col-md-8">
						         <input type="password" name="loginpw1" class="form-control"  value=""/>
						      </div>   
					</div>         
					<div class="form-group">
						     <label class="col-md-2 control-label">   姓名：</label>
						     <div class="col-md-8">
						         <input type="text" name="xingming"  class="form-control"/>
						     </div>    
					</div>         
					<div class="form-group">
						    <label class="col-md-2 control-label">    性别：</label>
						    <div class="col-md-2">
						    	<label class="radio-inline">
						         <input type="radio" name="xingbie" value="男" checked="checked"/>男
						        </label> 
						    </div>     
						    <div class="col-md-2">     
						    	<label class="radio-inline">
						         <input type="radio" name="xingbie" value="女"/>女
						        </label> 
						    </div>     
					</div>         
					<div class="form-group">
						         
						     <label class="col-md-2 control-label">   年龄：</label>
						     <div class="col-md-8">
						         <input type="text" name="nianling" class="form-control"  value="20" 
							     onkeyup="value=value.replace(/[^\d]/g,'') " 
							     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
							 </div>    
					</div>         
					<div class="form-group">
						   <label class="col-md-2 control-label">     住址：</label>
						   <div class="col-md-8">
						         <input type="text" name="zhuzhi"  class="form-control" />
						   </div>      
					</div>         
					<div class="form-group">
						   <label class="col-md-2 control-label">     电话：</label>
						   <div class="col-md-8">
						         <input type="text" name="dianhua"  class="form-control" />
						   </div>      
					</div>         
					<div class="form-group">
				       <label class="col-md-2 control-label"> 头像：</label>
				       <div class="col-md-6">
				         <input type="text" name="fujian" id="fujian" class="form-control" readonly="readonly"/>
				       </div>  
			           <div class="col-md-2">  
			             <input type="button" value="上传" onclick="up()" class=" btn btn-primary btn-block" />
			           </div>  
			           <input type="hidden" name="fujian" id="fujian"/>
					</div>         
					<div class="form-group">
					   <div class="col-md-2 col-md-offset-4">
				       <input type="button" value="提交" onclick="check1()" class=" btn btn-success btn-block"/> 
					   </div>
					   <div class="col-md-2">
				       <input type="reset" value="重置" class=" btn btn-warning btn-block"/>
					   </div>
					</div>         
                 </form>
			 </div>
	    </div>
	  </div>
	</div>



<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
