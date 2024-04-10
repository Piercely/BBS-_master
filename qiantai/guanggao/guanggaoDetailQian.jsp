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
		
	</script>
</head>
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>






<div id="Main" class="container">
  <div class="MainBg">
    <div class="Product W1000 margin">
         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
              <p style="margin: 10px;"><h2>信息标题：${requestScope.guanggao.biaoti }</h2></p>
              <p style="margin: 10px;"><h3>信息内容：<c:out value="${requestScope.guanggao.neirong }" escapeXml="false"></c:out></h3></p>
                     <p style="margin: 10px;"><img src="<%=path %>/${requestScope.guanggao.fujian }" alt="" width="580" height="280"/></p>
			         <p style="margin: 10px;">发布时间：${requestScope.guanggao.shijian }</p> 
			         
			         <c:forEach items="${requestScope.tupianList}" var="tupian" varStatus="ss">
		                 <p style="margin: 10px;"><img src="<%=path %>/${tupian.fujian }" alt="" width="688" height="400"/></p>
		                 <p style="margin: 10px;"><c:out value="${tupian.jieshao }" escapeXml="false"></c:out></p>
	                 </c:forEach>            
					    
		 </div>
    </div>
  </div>
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
