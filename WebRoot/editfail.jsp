<%@ page language="java" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>用户信息修改失败！</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function redir(){ 
			window.location.href="infupdate.jsp";
		}
		setTimeout("redir()",3000);
	</script>
	</head>

	<body bgcolor="#fffafa">
		<div align="center">
			<font size="2" color="#0000ff"> 修改用户信息失败！三秒后将自动跳转到用户信息修改<br>
				<br> </font><font size="2"><a href="index.jsp">点击直接跳转到商城首页</a>
			<br>
				<a href="userconsle.jsp">点击直接跳转到用户控制面板</a>
			</font>
			<br>
		</div>
	</body>
</html>
