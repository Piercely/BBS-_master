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
<title>Skin视界论坛</title>
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


	<div id="Main" class="container">
		<div class="MainBg">
			<div class="Product W1000 margin">
				<div
					style="margin-left: 10px; margin-top: 10px; margin-left: -20px;"
					class="row">
					<c:forEach items="${requestScope.catelogList}" var="catelog">
						<div class="c1-bline" style="padding: 13px 0px;">
							<div class="f-left">
								<img src="<%=path %>/img/bankuai.gif" align="middle"
									class="img-vm" border="0" /> <a
									href="<%=path %>/zhuti?type=zhutiByCatelog&catelog_id=${catelog.id}">${catelog.name}</a>
								<br /> <span style="font-family: 微软雅黑; font-size: 11px;">${catelog.jieshao}</span>
							</div>
							<div class="f-right">帖子数：${catelog.zhutishu}</div>
							<div class="clear"></div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>




	<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
