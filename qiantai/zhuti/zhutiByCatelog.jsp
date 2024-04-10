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
		function zhutiAdd(catelog_id)
		{
		    <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
                  return false;
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var zt="${sessionScope.user.del}";
                if(zt=="jinyan")
                {
                     alert("您现在处于禁言状态");
                     return false;
                }
                
                var url="<%=path %>/qiantai/zhuti/zhutiAdd.jsp?catelog_id="+catelog_id;
                var ret = window.showModalDialog(url,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
                window.location.reload();
            </c:if>
		}   
	</script>
</head>
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>






<div id="Main">
  <div class="MainBg">
    <div class="Product W1000 margin">
         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
              <table border="0" width="100%" cellspacing="5" cellpadding="5">
						<c:forEach items="${requestScope.zhuti_ding_list}" var="zhuti">
						<tr height="40" align="center">
							<td width="30">
								<img src="<%=path %>/img/icon.gif">
							</td>
							<td align="left" width="600">
							    <div style="font-family: 微软雅黑;font-size: 14px;">
							        <A href="<%=path %>/huifu?type=huifuByZhuti&zhuti_id=${zhuti.id}" style="color: black">${zhuti.title}</A>
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
					<br/>
					<div align="center"><A href="#" onclick="zhutiAdd(${requestScope.catelog_id})" style="margin-left: 10px;"><IMG src="<%=path %>/img/newtopic.gif"></A></div>   
		 </div>
    </div>
  </div>
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
