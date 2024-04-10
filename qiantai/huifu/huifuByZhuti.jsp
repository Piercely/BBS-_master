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
		var fujianPath1="";
         
         function down1(fujianPath)
	     {
	        fujianPath1=fujianPath;
	        
	        <c:if test="${sessionScope.user==null}">
	           alert("请先登录");
	           return false;
	        </c:if>
	     
	        <c:if test="${sessionScope.user!=null}">
	            var jifen=${sessionScope.user.jifen}
	            if(jifen<88888888)//不用积分可以下载
	            {
	                down();
	            }
	            else
	            {
	                alert("您的积分不够，不能下载，发帖可以获取积分哦");
	            }
	        </c:if>
	     }
	     
	     
	     
	     


         function down()
	     {
	           var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath1+"&fujianYuashiMing="+fujianPath1;
	           url=encodeURI(url); 
	           url=encodeURI(url); 
	           window.open(url,"_self");
	     }
	     
	     function huifuAdd(zhuti_id)
	     {
	           <c:if test="${sessionScope.user==null}">
		           alert("请先登录");
		       </c:if> 
		       <c:if test="${sessionScope.user!=null}">
			       var zt="${sessionScope.user.del}";
	                if(zt=="jinyan")
	                {
	                     alert("您现在处于禁言状态");
	                     return false;
	                }
	                
		            var url="<%=path %>/qiantai/huifu/huifuAdd.jsp?zhuti_id="+zhuti_id;
		            var ret = window.showModalDialog(url,"","dialogWidth:850px; dialogHeight:450px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	                window.location.reload();
	           </c:if>  
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
		           var ret = window.showModalDialog(url,"","dialogWidth:200px; dialogHeight:100px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	               var url="<%=path %>/index?type=index"
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
  
<body>


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>






<div id="Main" class="container">
  <div class="MainBg">
    <div class="Product W1000 margin">
         <div style="margin-left: 10px;margin-top: 10px;margin-left: -20px;">
              <table borderColor=#E0E0E0 cellSpacing=0 width="100%" border=1 class="table table-bordered">
				        <tr bgColor=#f0f0f0 height=20>
				          <td style="TEXT-INDENT: 5px" width="15%" style="font-size: 11px;">楼主</td>
				          <td colSpan=2 style="font-size: 11px;">
				                                        【标题】${requestScope.zhuti.title } 
				              <c:if test='${requestScope.zhuti.shifouding=="是"}'>
						          <img src="<%=path %>/img/ding.jpg">
							  </c:if>
							  <c:if test='${requestScope.zhuti.shifoujing=="是"}'>
							      <img src="<%=path %>/img/jing.jpg">
							  </c:if>
				          </td>
				        </tr>
				        <tr>
				          <td vAlign=top align="center" rowSpan=3>
				            <table style="MARGIN-TOP: 0px" border=0>
				              <tr>
				                  <td align="left" width="100%">
				                       <IMG src="<%=path %>/${requestScope.zhuti.user.fujian}" width="90" height="111">
				                  </td>
				              </tr>
				              <tr>
				                  <td align="left" width="100%" style="font-size: 11px;">
				                                                                   账号：${requestScope.zhuti.user.loginname }
				                  </td>
				              </tr>
				              <tr>
				                  <td align="left" width="100%" style="font-size: 11px;">
				                                                                      姓名：${requestScope.zhuti.user.xingming }
				                  </td>
				              </tr>
				            </table>
				          </td>
				        </tr>
				        <tr height=100%>
				          <td style="PADDING-RIGHT: 9px; PADDING-LEFT: 9px; PADDING-BOTTOM: 9px; PADDING-TOP: 9px" vAlign=top style="font-size: 11px;">
				              <c:out value="${requestScope.zhuti.content}" escapeXml="false"></c:out>
				              <br/>
				              <c:if test="${requestScope.zhuti.fujian !='' }">
				                ${requestScope.zhuti.fujian}&nbsp;<a href="#" onClick="down1('${requestScope.zhuti.fujian}','${requestScope.zhuti.fujian}')" style="font-size: 13px;color: red">下载 </a>
			                  </c:if>
				          </td>
				        </tr>
				        <tr bgColor=#f9f9f9 height="15">
				          <td align=right style="font-size: 12px;height: 15px;">
				                                          发表时间：${requestScope.zhuti.shijian }
				              &nbsp;&nbsp;&nbsp;                            
				              <A href="#" onClick="huifuAdd(${requestScope.zhuti.id })" style="font-size: 11px;">快速回复&nbsp;</A> 
				              <c:if test="${requestScope.zhuti.catelog.banzhu==sessionScope.user.loginname }">
				                  <A href="#" onClick="zhutiDel(${requestScope.zhuti.id })" style="font-size: 11px;">删除&nbsp;</A> 
				                  <A href="#" style="color: red" onclick="zhuti_zhiding_shezhi(${zhuti.id})">设置置顶</A>&nbsp;&nbsp;&nbsp;
								  <A href="#" style="color: red" onclick="zhuti_zhiding_quxiao(${zhuti.id})">取消置顶</A>&nbsp;&nbsp;&nbsp;
								  <A href="#" style="color: red" onclick="zhuti_jinghua_shezhi(${zhuti.id})">设置精华</A>&nbsp;&nbsp;&nbsp;
								  <A href="#" style="color: red" onclick="zhuti_jinghua_quxiao(${zhuti.id})">取消精华</A>&nbsp;&nbsp;&nbsp; 
				              </c:if>
				          </td>
				        </tr>
	                </table>
	                <c:forEach items="${requestScope.huifuList}" var="huifu" varStatus="ss">
	                <table style="margin-top: 8px;" borderColor=#E0E0E0 cellSpacing=0 width="100%" border=1>
				        <tr bgColor=#f0f0f0 height=20>
				          <td style="TEXT-INDENT: 5px" width="15%" style="font-size: 11px;">${ss.index+1 }楼</td>
				          <td colSpan=2 style="font-size: 11px;"></td>
				        </tr>
				        <tr>
				          <td vAlign=top align="center" rowSpan=3>
				            <table style="MARGIN-TOP: 0px" border=0>
				              <tr>
				                  <td align="left" width="100%">
				                       <IMG src="<%=path %>/${huifu.user.fujian}" width="90" height="111">
				                  </td>
				              </tr>
				              <tr>
				                  <td align="left" width="100%" style="font-size: 11px;">
				                                                                   账号：${huifu.user.loginname }
				                  </td>
				              </tr>
				              <tr>
				                  <td align="left" width="100%" style="font-size: 11px;">
				                                                                      姓名：${huifu.user.xingming }
				                  </td>
				              </tr>
				            </table>
				          </td>
				        </tr>
				        <tr height=100%>
				          <td style="PADDING-RIGHT: 9px; PADDING-LEFT: 9px; PADDING-BOTTOM: 9px; PADDING-TOP: 9px" vAlign=top style="font-size: 11px;">
				              <c:out value="${huifu.content}" escapeXml="false"></c:out>
				              <br/><br/>
				          </td>
				        </tr>
				        <tr bgColor=#f9f9f9 height="15">
				          <td align=right style="font-size: 12px;height: 15px;">
				                                          回复时间：${huifu.shijian }
				              &nbsp;&nbsp;&nbsp;      
				              <c:if test="${requestScope.zhuti.catelog.banzhu==sessionScope.user.loginname }">
				              <A href="#" onClick="huifuDel(${huifu.id })" style="font-size: 11px;">删除&nbsp;</A> 
				              </c:if>
				          </td>
				        </tr>
	                </table>
	                </c:forEach>
	                
	                <div style="margin-left: 1px;margin-top: 16px;" align="center"><A href="#" onclick="huifuAdd(${requestScope.zhuti.id })">
		                <IMG src="<%=path %>/img/reply.gif">
		            </A></div>  
		 </div>
    </div>
  </div>
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>



</body>
</html>
