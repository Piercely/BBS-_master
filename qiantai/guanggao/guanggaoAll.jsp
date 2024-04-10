<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />

<link rel="stylesheet" type="text/css" href="<%=path%>/css/qiantai.css" />

<style type="text/css">
.c1-bline {
	border-bottom: #999 1px dashed;
	border-top: 1px;
}

.f-right {
	float: right
}

.f-left {
	float: left
}

.clear {
	clear: both
}
</style>

<script type="text/javascript">
	
</script>
</head>

<body>


	<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>






	<div class="container">
		<div class="MainBg">
    	<div class="Product W1000 margin">
         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
		<table class="table table-hover">
			<c:forEach items="${requestScope.guanggaoList}" var="guanggao">
				<tr>
					<td>
						<img src="<%=path%>/img/head-mark4.gif" align="middle" class="img-vm" border="0" />
						<a href="<%=path %>/guanggao?type=guanggaoDetailQian&id=${guanggao.id}">${guanggao.biaoti}</a>
					</td>
					<td>
						<div class="f-right" style="margin-right: 10px;">${guanggao.shijian}</div>
					</td>
					<td>
						<div class="clear"></div>
					</td>
				</tr>
				</div>
			</c:forEach>
		</table>
		</div>
		</div>
		</div>
	</div>




	<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
