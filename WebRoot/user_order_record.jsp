<%@ page language="java" import="java.util.*,cake.wx.shopping.vo.*" pageEncoding="gbk"%>
<%@page import="cake.wx.shopping.factory.DAOFactory"%>
<%@page import="cake.wx.shopping.vo.Product"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>�鿴����</title>
	<style>
		table {
			border-collapse: collapse;
			width: 100%;
		}

		th, td {
			text-align: left;
			padding: 8px;
		}

		tr:nth-child(even){
			background-color: #f2f2f2;
		}

		th {
			background-color: mistyrose;
			color: black;
		}
	</style>
</head>
<body>
<h1>�����б�</h1>
<table>
	<thead>
	<tr>
		<th>������</th>
		<th>��Ʒ����</th>
		<th>��ƷͼƬ</th>
		<th>�۸�</th>
		<th>����״̬</th>
	</tr>
	</thead>
	<tbody>
	<%-- ѭ����ʾ���� --%>
<%--	<% for (Order order : orderList) { %>--%>
<%--	<tr>--%>
<%--		<td><%= order.getOrderId() %></td>--%>
<%--		<td><%= order.getProductName() %></td>--%>
<%--		<td><%= order.getQuantity() %></td>--%>
<%--		<td><%= order.getPrice() %></td>--%>
<%--	</tr>--%>
<%--	<% } %>--%>
	</tbody>
</table>
</body>
</html>
