<%--��ֵ����--%>
<%@ page contentType="text/html; charset=gbk"%>
<%@ page session="true" import="cake.wx.shopping.vo.*"%>
<%@page import="cake.wx.shopping.factory.DAOFactory"%>




<html>
	<head>
		<title>������Ϣ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<script language="javascript">

function openScript(url,name, width, height){
	var Win = window.open(url,name,'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}

</script>
		<link rel="stylesheet" href="books.css" type="text/css">
	</head>

	<body text="#000000">
	<%
		User user=new User();
		user=(User)request.getSession().getAttribute("loginusername");
		System.out.println(user.getUsername());
		Bank bankuser = new Bank();
		if(user==null&&bankuser==null){
			response.sendRedirect("index.jsp");
		}
	%>
		<div align="center">
			
			<jsp:include page="ui.html"></jsp:include>
			<br>
			<table width="693" height="267" border="0" cellpadding="1"
				cellspacing="1">
				<tr valign="top">
					<td width="218" align="center" bgcolor="#FFFFCC">
						<table width="100%" border="0" cellspacing="1" cellpadding="1">
							<tr>
								<td colspan="2">
									<form name="form2" method="post"
										action="servlet/ContrlServlet?valuetype=4">
										<br>
										<%
											bankuser = (Bank) request.getSession().getAttribute("bankuser");
											System.out.print(bankuser);
											if (bankuser == null) {
												out
												.println("<font size='3'>�ʻ���<input  size='20' height='15' type='text' name='useraccount'></font><br/>");
												out
												.println("<font size='3'>���룺<input  size='20' height='15' type='password' name='accountpwd'></font><br/>");
												out.print(" <input type='submit' value='��¼'>");
												out.print("  <a href='bankregister.jsp'>ע�����û�</a>");
											} else {
												out.print("<font size='3'>��ӭ��  :" + bankuser.getUsername()
												+ "</font>");
												out.print("&nbsp;&nbsp;");
												out
												.print("<font size='3'><a href='servlet/ContrlServlet?valuetype=9'>ע��</a></font>");
												out.print("&nbsp;&nbsp;");
											}
										%>
									</form>
								</td>
							</tr>
						</table>
						<p>
							&nbsp;
						</p>
						<p>
							&nbsp;
						</p>
					</td>
					<td width="468" align="center" bgcolor="#FFFFCC">
						<p>
							<br>
							<font color="#33FFCC"><b><font color="#0000FF">���ĳ�ֵ��Ϣ</font>
							</b>
							</font>
						</p>
						<%
								if (bankuser == null) {
								out
								.println("<table width='95%' border='1' cellspacing='0' cellpadding='1' bordercolor='#CCCCCC'>");
								out.println("<tr align='center'> ");
								out.print("<td width='25%' bgcolor='#CCFFFF'>�û���</td>");
								out.print("<td width='37%' bgcolor='#CCFFFF'>ʣ����</td></tr>");
								out
								.print("<tr><td>&nbsp;</td><td align='center'>&nbsp;</td></tr></table>");
							} else {
								String buname = bankuser.getUsername();
								bankuser = DAOFactory.getBankDAOInstance().select(buname);
								out
								.println("<table width='95%' border='1' cellspacing='0' cellpadding='1' bordercolor='#CCCCCC'>");
								out.println("<tr align='center'> ");
								out.print("<td width='25%' bgcolor='#CCFFFF'>�û���</td>");
								out.print("<td width='37%' bgcolor='#CCFFFF'>ʣ����</td></tr>");
								out.print("<tr><td>" + bankuser.getUsername()
								+ "</td><td align='center'>" +bankuser.getMoney()+"</td></tr></table>");
							}
						%>


						<form name="form1" method="post"
							action="servlet/ContrlServlet?valuetype=10">
							<label>
								��Ҫ��ֵ�Ľ�
								<input type="text" name="addmoney" id="textfield" size="15">

								<input type="submit" name="button" id="button" value="�ύ">
								<br>
							</label>
							<label>
								<br>
								<br>
							</label>
							<label></label>
							<label></label>
							<p>
								&nbsp;
							</p>
						</form>
						<p>
							&nbsp;
						</p>
						<p>
							&nbsp;
						</p>
					</td>
				</tr>
			</table>

			<table width="70%" border="0" cellspacing="2" cellpadding="2">
				<tr>
					<td align="center">
						&nbsp;
					</td>
				</tr>
			</table>

		</div>
	</body>
</html>
