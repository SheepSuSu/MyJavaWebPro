<%@ page language="java" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��¼�ɹ���</title>
    
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
			window.location.href="index.jsp";
		}
		setTimeout("redir()",3000);
	</script>
  </head>

  <style>
	  body {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  height: 100vh;
		  margin: 0;
		  background-color: #fffafa;
	  }

	  .center-text {
		  text-align: center;
	  }
  </style>

  <body>
  <div class="center-text">
	  <font size="2" color="black">��¼�ɹ���������Զ���ת���̳���ҳ</font><br><br>
	  <font size="2"><a href="index.jsp">���ֱ����ת���̳���ҳ</a></font><br>
	  <font size="2"><a href="userconsle.jsp">���ֱ����ת���û��������</a></font>
  </div>
  </body>
</html>
