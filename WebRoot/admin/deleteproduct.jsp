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
	</head>
  
 <body>
		<form action="${pageContext.request.contextPath}/servlet/AdminServlet?actionType=321" method="post">
			<table id="large" cellspacing="0">

				<thead>
					<tr>
					    <th>
							��ƷͼƬ
						</th>
						<th>
							��Ʒ���
						</th>
						<th>
							��Ʒ����
						</th>
						<th>
							��Ʒ����
						</th>
						<th>
							��Ʒ����
						</th>
					 <th>ѡ��ɾ��</th>
						
					</tr>
				</thead>
				<tfoot>
					<tr>
					    <th>
							��ƷͼƬ
						</th>
						<th>
							��Ʒ���
						</th>
						<th>
							��Ʒ����
						</th>
						<th>
							��Ʒ����
						</th>
						<th>
							��Ʒ����
						</th>
					 <th>ѡ��ɾ��</th>					
					</tr>
				</tfoot>
				<tbody>
			
	<%
	 List<Product> pList=DAOFactory.getProductDAOInstance().selectAll();
	 for(int i=0;i<pList.size();i++){
	     Product product=pList.get(i);
	     
	 %>				
					
					<tr>
					<td>
					<img src="<%=product.getImgpath() %>"  width="80" height="80"/>
				</td>
				<td><%=product.getPid()%></td>
				<td><%=product.getPname()%></td>
				<td><%=product.getPcount() %></td>
				<td><%=product.getPrice()%></td>
				
				<td>
							
								<input type="checkbox" value=<%= product.getPid()%> name="pid" />
							
						</td>

			</tr>
			<% }%>
				
				</tbody>
			</table>
			
			
			<input type="submit" value="ɾ��"/>
			
	</form>
	</body>
</html>
