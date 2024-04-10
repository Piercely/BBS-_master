<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		
        <script language="javascript">
           function userDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/user?type=userDel&id="+id;
               }
           }
           
           function userJinyan(id)
           {
               if(confirm('您确定吗？'))
               {
                   window.location.href="<%=path %>/user?type=userJinyan&id="+id;
               }
           }
           
           function userJiejin(id)
           {
               if(confirm('您确定吗？'))
               {
                   window.location.href="<%=path %>/user?type=userJiejin&id="+id;
               }
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/img/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="14" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="4%">序号</td>
					<td width="10%">账号</td>
					<td width="10%">密码</td>
					<td width="10%">姓名</td>
					
					<td width="10%">性别</td>
					<td width="10%">年龄</td>
					<td width="10%">住址</td>
					<td width="10%">电话</td>
					
					<td width="10%">头像</td>
					<td width="10%">状态</td>
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.userList}" var="user" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 ${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.loginname}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.loginpw}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.xingming}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						 ${user.xingbie}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.nianling}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.zhuzhi}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.dianhua}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						 <div onmouseover = "over('<%=path %>/${user.fujian}')" onmouseout = "out()" style="cursor:hand;">头像</div>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 <c:if test="${user.del=='no'}">
					                           正常&nbsp;&nbsp;<a href="#" onclick="userJinyan(${user.id})" style="color: red">禁言</a>
					     </c:if>
					     <c:if test="${user.del=='jinyan'}">
					                           禁言&nbsp;&nbsp;<a href="#" onclick="userJiejin(${user.id})" style="color: red">解禁</a>
					     </c:if>	
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="userDel(${user.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<div id="tip" style="position:absolute;display:none;border:0px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="120" width="100"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>
