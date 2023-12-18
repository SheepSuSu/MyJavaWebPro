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
	<title>查看订单</title>
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
<h1>订单列表</h1>
<table>
	<thead>
	<tr>
		<th>订单号</th>
		<th>商品名称</th>
		<th>商品图片</th>
		<th>价格</th>
		<th>物流状态</th>
	</tr>
	</thead>
	<tbody>
	<%-- 循环显示订单 --%>
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
