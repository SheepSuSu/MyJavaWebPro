<%--��ֵʧ��ҳ��--%>
<%@ page language="java" import="java.util.*,cake.wx.shopping.vo.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ֵʧ�ܣ�</title>
    
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
			window.location.href="addmoney.jsp";
		}
		setTimeout("redir()",3000);
	</script>
  </head>

  <body bgcolor="#fffafa">
  <%
		User user=new User();
		user=(User)request.getSession().getAttribute("loginusername");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
  %>
  <%
  	if("zero".equals(request.getSession().getAttribute("zeromoney"))){
  		out.print("<div align='center'>");
		out.print("<font size='2' color='#0000ff'> ��ֵ0Ԫ��������Զ���ת��ע��ҳ��<br>");
  	}else{
  		out.print("<div align='center'>");
		out.print("<font size='2' color='#0000ff'> ��ֵʧ�ܣ�������Զ���ת���û���ֵҳ��<br>");
  	}
  		out.print("<br> </font><font size='2'><a href='index.jsp'>���ֱ����ת���̳���ҳ</a>");
		out.print("<br>");
		out.print("</font>");
		out.print("<br>");
		out.print("</div>");
  %>
	</body>
</html>
