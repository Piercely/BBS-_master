<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Skin视界论坛后台管理系统</title>
		<style type="text/css">
			* {overflow: hidden;font-size: 9pt;}
		</style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		<!-- Bootstrap -->
    	<link href="<%=path %>/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    	 <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    	<script src="<%=path %>/js/bootstrap-3.3.7-dist/js/jquery-1.12.4.min.js"></script>
    	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    	<script src="<%=path %>/js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		
		<script type="text/javascript">
		    function check1()
			{                                                                                         
			     if(document.loginForm.userName.value=="")
				 {
				 	alert("请输入账号");
					document.loginForm.userName.focus();
					return false;
				 }
				 if(document.loginForm.userPw.value=="")
				 {
				 	alert("请输入密码");
					document.loginForm.userPw.focus();
					return false;
				 }
				 document.getElementById("indicator").style.display="block";
				 loginService.login(document.loginForm.userName.value,document.loginForm.userPw.value,0,callback);
			}
			
			function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        window.location.href="<%=path %>/loginSuccess.jsp";
			    }
			    
			}
		</script>
		<style>
            /*web background*/
            .container{
                display:table;
                height:100%;
            }

            .row{
                display: table-cell;
                vertical-align: middle;
            }
            /* centered columns styles */
            .row-centered {
                text-align:center;
            }
            .col-centered {
                display:inline-block;
                float:none;
                text-align:left;
                margin-right:-4px;
            }
        </style>
	</head>

	<body>
<div class="container"> 
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td bgcolor="#c7edcc">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="561" style="background: url(<%=path %>/images/lbg.png)">
								<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td height="238"
											style="background: url(<%=path %>/images/logo.jpg)">
										</td>
									</tr>
									<tr>
										<td height="190">
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="208" height="190" style="font-size: 27px;">
										
													</td>
													<td width="518">
														
													<form action="<%=path %>/" method="post" name="loginForm" role="form">
														<table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td align="right" style="font-family: Microsoft Yahei;">
																	账号：
																</td>
																<td align="left">
																	<input class="form-control" type="text" name="userName" style="width: 200px;">
																</td>
															</tr>	
															<tr>
																<td align="right" style="font-family: Microsoft Yahei;">
																	密码：
																</td>
																<td align="left">
																	<input class="form-control" type="password" name="userPw" style="width: 200px;">
																</td>
															</tr>	
															<tr style="display: none">
																<td align="right" style="font-family: Microsoft Yahei;">
																	类型：
																</td>
																<td align="left">
															              <select class="INPUT_text" name="userType" style="height:20px;width:200px;">
																			<option value="0">0</option>
																			<option value="1">1</option>
																		  </select>
																</td>
															</tr>	
															<tr>
																<td height="50">
																	&nbsp;
																</td>
																<td height="50">
																	<input class="btn btn-lg btn-primary btn-block" type="button" value="登陆" style="width: 80px;" onClick="check1()">
					              									<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
																</td>
															</tr>
														</table>
													</form>
														
													</td>
													<td width="214">
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="133"
											>&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</div>
	</body>
</html>
