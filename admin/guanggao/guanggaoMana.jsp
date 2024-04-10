<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function guanggaoAdd()
           {
              var url="<%=path %>/admin/guanggao/guanggaoAdd.jsp";
              window.location.href=url;
           }
           
           function guanggaoDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/guanggao?type=guanggaoDel&id="+id;
               }
           }
           function guanggaoPre(id)
           {
                   window.location.href="<%=path %>/guanggao?type=guanggaoPre&id="+id;
           }
           
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
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
					<td height="14" colspan="24" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="20%">信息标题</td>
					<td width="20%">信息内容</td>
					<td width="10%">信息图片</td>
					
					<td width="10%">发布时间</td>
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.guanggaoList}" var="guanggao" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 ${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${guanggao.biaoti}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 <c:out value="${fn:substring(guanggao.neirong, 0, 20)}" escapeXml="false"></c:out>...
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <div onmouseover = "over('<%=path %>/${guanggao.fujian}')" onmouseout = "out()" style="cursor:hand;">
							信息图片
					    </div>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						 ${guanggao.shijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="guanggaoDel(${guanggao.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加公告" style="width: 123px;" onclick="guanggaoAdd()" />
			    </td>
			  </tr>
		    </table>
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:200px; height:200px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="190" width="290"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>
