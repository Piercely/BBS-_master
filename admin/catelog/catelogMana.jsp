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
           function catelogDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/catelog?type=catelogDel&id="+id;
               }
           }
           
           function catelogAdd()
           {
                 var url="<%=path %>/admin/catelog/catelogAdd.jsp";
				 window.location.href=url;
           }
           function catelogPre(id)
           {
                   window.location.href="<%=path %>/catelog?type=catelogPre&id="+id;
           }
           
           function banzhuShezhi(id)
           {
                 var url="<%=path %>/admin/catelog/banzhuShezhi.jsp?id="+id;
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="11" topmargin="11" background='<%=path %>/img/allbg.gif'>
			<table width="80%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" >
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="10%">序号</td>
					<td width="20%">板块名称</td>
					<td width="30%">板块介绍</td>
					<td width="15%">版主</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.catelogList}" var="catelog" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${sta.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${catelog.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${catelog.jieshao}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${catelog.banzhu}&nbsp;&nbsp;
						<a href="#" onclick="banzhuShezhi(${catelog.id})" style="color: red">版主设置</a>
					</td>
					
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="catelogDel(${catelog.id})"/>
						<input type="button" value="编辑" onclick="catelogPre(${catelog.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			<br/>
			<input type="button" value="添加板块" style="width: 120px;" onclick="catelogAdd()" />
	</body>
</html>
