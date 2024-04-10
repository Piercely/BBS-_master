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
         function down1(fujianPath,fujianYuashiMing)
	     {
	           var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
	           url=encodeURI(url); 
	           url=encodeURI(url); 
	           window.open(url,"_self");
	     }
	     
	     
	     function huifuDel(id)
	     {
		           var url="<%=path %>/huifu?type=huifuDel&id="+id;
		           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	               window.location.reload();
	     }
	     
	     
	     function zhutiDel(id)
	     {
		           var url="<%=path %>/zhuti?type=zhutiDel&id="+id;
		           window.location.href=url;
	     }
	     
	     
	    function zhuti_zhiding_shezhi(id)
	    {
	           var url="<%=path %>/zhuti?type=zhuti_zhiding_shezhi&id="+id;
	           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	           window.location.reload();
	    }
	    
	    function zhuti_zhiding_quxiao(id)
	    {
	           var url="<%=path %>/zhuti?type=zhuti_zhiding_quxiao&id="+id;
	           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	           window.location.reload();
	    }
	    
	    
	    function zhuti_jinghua_shezhi(id)
	    {
	           var url="<%=path %>/zhuti?type=zhuti_jinghua_shezhi&id="+id;
	           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	           window.location.reload();
	    }
	    function zhuti_jinghua_quxiao(id)
	    {
	           var url="<%=path %>/zhuti?type=zhuti_jinghua_quxiao&id="+id;
	           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	           window.location.reload();
	    }
    </script>
    
  </head>
  
  <body style="margin-left: 9px;margin-top: 9px;">
	  <TABLE borderColor=#E0E0E0 cellSpacing=0 width="100%" border=1>
				        <TR bgColor=#f0f0f0 height=20>
				          <TD style="TEXT-INDENT: 5px" width="15%" style="font-size: 11px;">楼主</TD>
				          <TD colSpan=2 style="font-size: 11px;">
				                                        【主题】${requestScope.zhuti.title } 
				              <c:if test='${requestScope.zhuti.shifouding=="是"}'>
						          <img src="<%=path %>/img/ding.jpg">
							  </c:if>
							  <c:if test='${requestScope.zhuti.shifoujing=="是"}'>
							      <img src="<%=path %>/img/jing.jpg">
							  </c:if>
				          </TD>
				        </TR>
				        <TR>
				          <TD vAlign=top align="center" rowSpan=3>
				            <TABLE style="MARGIN-TOP: 0px" border=0>
				              <TR>
				                  <TD align="left" width="100%">
				                       <IMG src="<%=path %>/${requestScope.zhuti.user.fujian}" width="90" height="111">
				                  </TD>
				              </TR>
				              <TR>
				                  <TD align="left" width="100%" style="font-size: 11px;">
				                                                                   账号：${requestScope.zhuti.user.loginname }
				                  </TD>
				              </TR>
				              <TR>
				                  <TD align="left" width="100%" style="font-size: 11px;">
				                                                                      姓名：${requestScope.zhuti.user.loginpw }
				                  </TD>
				              </TR>
				              <TR>
				                  <TD align="left" width="100%" style="font-size: 11px;">
				                                                                      积分：${requestScope.zhuti.user.jifen }
				                  </TD>
				              </TR>
				            </TABLE>
				          </TD>
				        </TR>
				        <TR height=100%>
				          <TD style="PADDING-RIGHT: 9px; PADDING-LEFT: 9px; PADDING-BOTTOM: 9px; PADDING-TOP: 9px" vAlign=top style="font-size: 11px;">
				              <c:out value="${requestScope.zhuti.content}" escapeXml="false"></c:out>
				              <br/><br/>
				              <c:if test="${requestScope.zhuti.fujian !='' }">
			                    <a href="#" onClick="down1('${requestScope.zhuti.fujian}','${requestScope.zhuti.fujian}')" style="font-size: 13px;color: red">附件下载</a>
			                  </c:if>
				          </TD>
				        </TR>
				        <TR bgColor=#f9f9f9 height="15">
				          <TD align=right style="font-size: 12px;height: 15px;">
				                                          发表时间：${requestScope.zhuti.shijian }
				              &nbsp;&nbsp;&nbsp;                            
			                  <A href="#" style="color: red" onClick="zhutiDel(${requestScope.zhuti.id })" style="font-size: 11px;">删除&nbsp;</A> 
			                  <A href="#" style="color: red" onclick="zhuti_zhiding_shezhi(${requestScope.zhuti.id})">设置置顶</A>&nbsp;&nbsp;&nbsp;
							  <A href="#" style="color: red" onclick="zhuti_zhiding_quxiao(${requestScope.zhuti.id})">取消置顶</A>&nbsp;&nbsp;&nbsp;
							  <A href="#" style="color: red" onclick="zhuti_jinghua_shezhi(${requestScope.zhuti.id})">设置精华</A>&nbsp;&nbsp;&nbsp;
							  <A href="#" style="color: red" onclick="zhuti_jinghua_quxiao(${requestScope.zhuti.id})">取消精华</A>&nbsp;&nbsp;&nbsp; 
				          </TD>
				        </TR>
	                </TABLE>
	                <c:forEach items="${requestScope.huifuList}" var="huifu" varStatus="ss">
	                <TABLE style="margin-top: 8px;" borderColor=#E0E0E0 cellSpacing=0 width="100%" border=1>
				        <TR bgColor=#f0f0f0 height=20>
				          <TD style="TEXT-INDENT: 5px" width="15%" style="font-size: 11px;">${ss.index+1 }楼</TD>
				          <TD colSpan=2 style="font-size: 11px;"></TD>
				        </TR>
				        <TR>
				          <TD vAlign=top align="center" rowSpan=3>
				            <TABLE style="MARGIN-TOP: 0px" border=0>
				              <TR>
				                  <TD align="left" width="100%">
				                       <IMG src="<%=path %>/${huifu.user.fujian}" width="90" height="111">
				                  </TD>
				              </TR>
				              <TR>
				                  <TD align="left" width="100%" style="font-size: 11px;">
				                                                                   账号：${huifu.user.loginname }
				                  </TD>
				              </TR>
				              <TR>
				                  <TD align="left" width="100%" style="font-size: 11px;">
				                                                                      姓名：${huifu.user.xingming }
				                  </TD>
				              </TR>
				            </TABLE>
				          </TD>
				        </TR>
				        <TR height=100%>
				          <TD style="PADDING-RIGHT: 9px; PADDING-LEFT: 9px; PADDING-BOTTOM: 9px; PADDING-TOP: 9px" vAlign=top style="font-size: 11px;">
				              <c:out value="${huifu.content}" escapeXml="false"></c:out>
				              <br/><br/>
				          </TD>
				        </TR>
				        <TR bgColor=#f9f9f9 height="15">
				          <TD align=right style="font-size: 12px;height: 15px;">
				                                          回复时间：${huifu.shijian }
				              &nbsp;&nbsp;&nbsp;      
				              <c:if test="${requestScope.zhuti.catelog.banzhu==sessionScope.user.id }">
				              <A href="#" onClick="huifuDel(${huifu.id })" style="font-size: 11px;">删除&nbsp;</A> 
				              </c:if>
				          </TD>
				        </TR>
	                </TABLE>
	                </c:forEach>
  </body>
</html>
