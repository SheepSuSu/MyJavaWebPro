<%@ page language="java"  pageEncoding="gbk"%>
<%@page import="cake.wx.shopping.factory.DAOFactory"%>
<%@page import="cake.wx.shopping.vo.Product"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
  table {
	font-size: 12px;
	background-color: lavenderblush;
	
	border: 1px solid #a4d2e8;
}
</style>
  </head>
  
  <body>
  <%
   String pid=(String)request.getSession().getAttribute("pid");
      Product product= null;
      try {
          product = DAOFactory.getProductDAOInstance().selectById(pid);
      } catch (Exception e) {
          e.printStackTrace();
      }
  %>
    <form  action="${pageContext.request.contextPath}/servlet/AdminServlet?actionType=3411" method="post" >
  <table width="469" height="287" border="1" align="center" cellpadding="1" cellspacing="0">
  <tr ><td colspan="2"><center><font color="black" size="4">修改商品信息</font></center></td></tr>
    <tr>
      <td width="227" height="204"><table width="200" height="200" border="0" cellpadding="1" cellspacing="0">
        <tr>
          <td><img src="<%=product.getImgpath() %>"></td>
        </tr>
      </table></td>
      <td width="498"><p><font color="black">
        产品名称：</font> 
            <input type="text" name="pname"  value="<%=product.getPname() %>" />
      </p>
      <p><font color="black">
        产品数量：</font> 
          <input type="text" name="pcount" value="<%=product.getPcount() %>"/>
</p>
      <p><font color="black">
        产品价格： 
          </font><input type="text" name="price" value="<%=product.getPrice() %>"/>
      </p></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="update" value="修改" />
        　　　　　　　　
        <input type="reset" name="reset" value="重置" />
      </div></td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
  </body>
</html>
