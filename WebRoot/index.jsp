<%@ page language="java" import="cake.wx.shopping.vo.*,java.util.*,cake.wx.shopping.servlet.*" pageEncoding="gbk"%>

<%@page import="cake.wx.shopping.factory.DAOFactory"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>Cake小店 欢迎您的光临！</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body bgcolor="#ffe4e1">
  
<table width="926" height="341" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td rowspan="14">
			<img src="images/login_01.jpg" width="189" height="292" alt=""></td>
		<td colspan="3" rowspan="14">
			<img src="images/login_02.jpg" width="118" height="292" alt=""></td>
		<td colspan="5" rowspan="14"></td>
		<td colspan="19" rowspan="14">
			<img src="images/welcome.jpeg" width="292" height="292" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="26" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="14" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="6" alt=""></td>
	</tr>
	<tr>
		<td colspan="5" rowspan="4">
			<img src="images/分隔符.gif" width="1" height="15" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="27" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="23" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="122" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="6" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td colspan="19" valign="bottom" background="images/login_03.jpg">
        <table width="923" height="35" border="0" cellspacing="0">
          <tr>
            <td width="255">&nbsp;</td>
            <td valign="bottom">
                  <form action="servlet/ContrlServlet?valuetype=1" method="post">
<%
User user=new User();
user=(User)request.getSession().getAttribute("loginusername");
System.out.println("working_______");
if(user==null){
	System.out.println("empty!!!");
out.println("<font size='3'>用户：<input  size='20' height='15' type='text' name='loginusername'></font>");
out.println("<font size='3'>密码：<input  size='20' height='15' type='password' name='loginpassword'></font>");
out.print(" <input type='submit' value='登录'>");
out.print("  <a href='register.jsp'>注册新用户</a>");
}else{
	System.out.println("i am user!!!");
out.print("<font size='3'>欢迎您  :"+user.getUsername()+"</font>");
out.println("&nbsp;&nbsp;");
out.print("<font size='3'><a href='servlet/ContrlServlet?valuetype=7'>注销</a></font>");
out.println("&nbsp;&nbsp;");
out.print("<a href='userconsle.jsp'>个人控制面板</a>");

}
%>


</form>
            </td>
          </tr>
        </table></td>
<td>
			<img src="images/分隔符.gif" width="1" height="48" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="189" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="62" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="86" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="84" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="69" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="63" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="5" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="39" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="21" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="89" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="30" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="26" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="48" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="33" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="28" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="12" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="15" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="25" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
<table width="925" height="1060" border="0" align="center" cellpadding="1" cellspacing="0" >
	<tr>
		<td valign="top" background="images/b1.JPG"><table width="905" height="749" border="0" cellpadding="1" cellspacing="0">
		<tr>
		<td width="589" height="240" align="left" valign="bottom" bgcolor="#fff0f5">
		<div style="width: 100px; border: 3px solid mediumpurple; border-radius: 5px; padding: 5px;">欢迎选购商品</div>
		<table width="589" height="240" border="1" cellpadding="1" cellspacing="0"  bgcolor="#f0f8ff">
		<tr>
          <%
			  List<Product> pList= null;
			  try {
				  pList = DAOFactory.getProductDAOInstance().selectAll();
			  } catch (Exception e) {
				  e.printStackTrace();
			  }
			  List pList1 = (List)request.getSession().getAttribute("pList");
   request.getSession().setAttribute("pList",pList1);

 %>
			<div style="width: 589px; border: 1px solid #ccc; display: flex; flex-wrap: wrap; justify-content: space-between;">
				<% for (Product product : pList) { %>
				<div class="product">
					<div class="img-name">
						<img src="<%= product.getImgpath() %>" width="120" height="100">
						<div class="pname"><%= product.getPname() %></div>
					</div>
					</br>
					<center><%= product.getPrice() %>元
						<a href="servlet/BuyServlet?pid=<%= product.getPid() %>"><font color="red" size="2">加入购物车</font></a>
					</center>
				</div>
				<% } %>
				<div style="clear: both;"></div>
			</div>

			<style>
				.product {
					width: calc(33.33% - 10px); /* 每行显示4个商品，减去margin-right的宽度 */
					margin-right: 10px;
					margin-bottom: 10px;
					display: flex;
					flex-direction: column; /* 商品图片和名称垂直排列 */
					align-items: center; /* 水平对齐居中 */
					justify-content: flex-start; /* 垂直对齐顶部，商品图片在上方 */
				}
				.img-name {
					display: flex;
					flex-direction: column; /* 商品图片和名称垂直排列 */
					align-items: center; /* 水平对齐居中 */
				}
				.pname {
					margin-top: 5px; /* 商品名称与图片之间的垂直间距 */
					text-align: center;
				}
			</style>

          </tr>
        </table></td>
        <td width="312" rowspan="2"><table width="312" height="698" border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td width="13" height="103">&nbsp;</td>
            <td width="283">&nbsp;</td>
            <td width="10">&nbsp;</td>
          </tr>
          <tr>
            <td height="577">&nbsp;</td>
            <td><table width="100%" height="590" border="0" cellpadding="1" cellspacing="0">
              <tr>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="390"><table width="579" height="353" border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td width="22" height="26">&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- End ImageReady Slices -->
    </body>
</html>
