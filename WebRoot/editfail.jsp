<%@ page language="java" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>�û���Ϣ�޸�ʧ�ܣ�</title>

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
			<font size="2" color="#0000ff"> �޸��û���Ϣʧ�ܣ�������Զ���ת���û���Ϣ�޸�<br>
				<br> </font><font size="2"><a href="index.jsp">���ֱ����ת���̳���ҳ</a>
			<br>
				<a href="userconsle.jsp">���ֱ����ת���û��������</a>
			</font>
			<br>
		</div>
	</body>
</html>