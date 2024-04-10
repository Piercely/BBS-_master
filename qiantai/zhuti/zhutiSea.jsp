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

    <script type="text/javascript">
		function cc()
		    {
		        if(document.form1.title.value=="")
		        {
		            alert("请输入关键字");
		            return false;
		        }
		        
		        document.form1.submit();
		    }
	</script>
</head>
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>




<div id="Main" class="container">
  <div class="MainBg">
    <div class="Product W1000 margin">
         <div style="">
              <form action="<%=path %>/zhuti?type=zhutiRes" name="form1" method="post">
<!-- 						<table align="left" border="0" cellpadding="1" cellspacing="1"> -->
<!-- 							<tr align='right'> -->
<!-- 								<td style="width: 80px;vertical-align: middle;font-size: 13px;" align="right"> -->
<!-- 									关键字： -->
<!-- 						        </td> -->
<!-- 								<td align="left"> -->
<!-- 								<input name="title" type="text" style="width:360px;height: 22px;"/> -->
<!-- 								<input type="button" value="查询" onclick="cc()" style="width:100px;"/>&nbsp;  -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 						</table> -->
						<div class="form-group">
<!-- 					  		<label class='col-md-1'for="name">关键字：</label> -->
					  		<div class="col-md-8">
							    <input type="text" class="form-control" name="title" type="text" placeholder="关键字...">
					  		</div>
							<div  class="col-md-2">
							
						    <button class="btn btn-default" type="button" onclick="cc()">查询</button>
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
