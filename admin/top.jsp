<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<html>
	<head>
		<title>top</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Skin视界论坛</title>
		<script type="text/javascript">
		    function logout()
			{
			   if(confirm("确定要退出本系统吗??"))
			   {
				   window.parent.location="<%=path %>/login.jsp";
			   }
			}
	    </script>
	</head>
	  <body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH="0" MARGINHEIGHT="0" style="background-color: #ff9e5c">
		<div>
	         <span style="float:left;font-size: 40px;margin-top: 40px;margin-left: 50px;color: white">
	                                       Skin视界论坛
	         </span>
			 <span style="float:right;font-size: 18px;margin-top: 50px;margin-right:50px;color: white">
			    <c:if test="${sessionScope.userType==0}">
					 欢迎你：Administrator
			        &nbsp;&nbsp;
			        <a href="#" style="font-size: 17px;color: white;" onclick="logout()">注销系统</a>&nbsp;&nbsp;
				</c:if>
				<c:if test="${sessionScope.userType==1}">
					<%--  欢迎你：${sessionScope.huiyuan.xingming} --%>
			        &nbsp;&nbsp;
			        <a href="#" style="font-size: 17px;color: white;" onclick="logout()">注销系统</a>&nbsp;&nbsp;
				</c:if>
			 </span>
	      </div>
	  </body>
</html>
