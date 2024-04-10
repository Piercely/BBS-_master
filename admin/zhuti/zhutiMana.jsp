<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
   String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<LINK rel=stylesheet type=text/css href="<%=path %>/css/base.css">

    <STYLE type=text/css>
    </STYLE>
    
    
    <script type="text/javascript">
         
    </script>
    
  </head>
  
  <body style="margin-left: 9px;margin-top: 9px;">
	  <table align="left" border="0" width="90%" cellspacing="1" cellpadding="1">
						<!-- <tr height="28">
							<td bgcolor="#FF9797">
								<span style="float:left;color: white;font-size: 11px;">
								   <b style="font-family: 微软雅黑;font-size: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;</b>
								</span>
								<span style="float:right;color: white;font-size: 11px;">
								&nbsp;
								</span>
							</td>
						</tr> -->
						<tr bgcolor="#F9F9F9">
							<td align="center">
								<table border="0" width="100%" cellspacing="5" cellpadding="5">
									<c:forEach items="${requestScope.zhuti_ding_list}" var="zhuti">
									<tr height="40" align="center">
										<td width="30">
											<img src="<%=path %>/img/icon.gif">
										</td>
										<td align="left" width="600">
										    <div style="font-family: 微软雅黑;font-size: 14px;">
										        <A href="<%=path %>/huifu?type=huifuMana&zhuti_id=${zhuti.id}" style="color: black">${zhuti.title}</A>
										        <c:if test='${zhuti.shifouding=="是"}'>
												     <img src="<%=path %>/img/ding.jpg">
												</c:if>
												<c:if test='${zhuti.shifoujing=="是"}'>
												     <img src="<%=path %>/img/jing.jpg">
												</c:if>
											</div>
										</td>
										<td>
											<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">回复数：${zhuti.huifushu}</div>
										</td>
										<td>
											<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">${zhuti.user.loginname}</div>
										</td>
										<td>
											<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">${zhuti.shijian}</div>
										</td>
									</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>
  </body>
</html>
