<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="cake.wx.shopping.vo.*" %>
<%@page import="cake.wx.shopping.factory.DAOFactory"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	<head>
		
		<style type="text/css">@import "../css/default.css";</style>
	
	<script type="text/javascript" src="../js/jquery-latest.js"></script>
	<script type="text/javascript" src="../js/jquery.tablesorter.js"></script>
	<script type="text/javascript">
	
	$(function() {
		
		// add ie checkbox widget
		$.tablesorter.addWidget({
			id: "iecheckboxes",
			format: function(table) {
				if($.browser.msie) {
					if(!this.init) {
						$(":checkbox",table).change(function() { this.checkedState = this.checked});				
						this.init = true;
					}
					$(":checkbox",table).each(function() {
						$(this).attr("checked",this.checkedState);
					});
				}
			}
		});
		
		$("table").tablesorter({widgets: ['iecheckboxes']})
		
		
		
		
		
	});
		
	</script>

		<style type="text/css">
			body {
				background-color: lavenderblush; /* ���ñ�����ɫ */
				font-family: Arial, sans-serif;
			}

			table {
				width: 100%;
				border-collapse: collapse;
				margin-bottom: 20px;
			}

			th, td {
				padding: 8px;
				border-bottom: 1px solid #ddd;
				text-align: left;
			}

			thead th {
				background-color: #c1e2f2; /* ���ñ�ͷ������ɫ */
				color: black;
				font-weight: bold;
			}

			tfoot th {
				background-color: #c1e2f2; /* ���ñ�β������ɫΪǳ��ɫ */
				color: white;
				font-weight: bold;
			}

			tbody tr{
				background-color: burlywood; /* �����еı�����ɫΪǳ��ɫ */
			}

			tbody tr:hover {
				background-color: #c1e2f2; /* ���������ͣʱ�ı�����ɫ */
			}

			input[type="submit"] {
				background-color: #c1e2f2; /* �����ύ��ť�ı�����ɫ */
				color: white;
				padding: 8px 16px;
				border: none;
				cursor: pointer;
			}

			input[type="submit"]:hover {
				background-color: #a4d2e8; /* ���������ͣʱ�ı�����ɫΪ����ɫ */
			}
		</style>
	</head>
  
 <body>
		<form action="${pageContext.request.contextPath}/servlet/AdminServlet?actionType=221" method="post">
			<table id="large" cellspacing="0">

				<thead>
					<tr>
						<th>
							�û���
						</th>

						<th>
							Email
						</th>
						<th>
							�绰
						</th>
						<th>
							��ַ
						</th>
						<th>
							�Ա�
						</th>
						<th>
							����
						</th>
						<th>
							ע��ʱ��
						</th>
										<th>ѡ��ɾ��</th>
						
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>
							�û���
						</th>

						<th>
							Email
						</th>
						<th>
							�绰
						</th>
						<th>
							��ַ
						</th>
						<th>
							�Ա�
						</th>
						<th>
							����
						</th>
						<th>
							ע��ʱ��
						</th>
										<th>ѡ��ɾ��</th>
						

					</tr>
				</tfoot>
				<tbody>
			
	<%
	 List<User>userList=DAOFactory.getUserDAOInstance().selectAll();
	 for(int i=0;i<userList.size();i++){
	     User user=userList.get(i);
	 %>				
					
					<tr>
				<td><%=user.getUsername() %></td>
				<td><%=user.getEmail() %></td>
				<td><%=user.getTel() %></td>
				<td><%=user.getAddress() %></td>
				<td><%=user.getSex() %></td>
				<td><%=user.getAge() %></td>
				<td><%=user.getRegtime() %></td>
				<td>
							
								<input type="checkbox" value=<%= user.getUsername()%> name="username" />
							
						</td>

			</tr>
			<% }%>
				
				</tbody>
			</table>
			
			
			<input type="submit" value="ɾ��"/>
			
	</form>
	</body>
</html>
