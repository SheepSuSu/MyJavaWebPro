<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <style type="text/css">
  table {
	font-size: 12px;
	background-color: paleturquoise;
	
	border: 1px solid #000;
}
</style>

  </head>

  <style>
      body {
          background-color: #f2f2f2;
          font-family: Arial, sans-serif;
      }

      form {
          margin: auto;
          width: 300px;
          background-color: #fff;
          padding: 20px;
          border: 1px solid #ccc;
          border-radius: 5px;
      }

      h4 {
          text-align: center;
          color: black;
          background-color: lavenderblush;
          padding: 10px;
          border-radius: 5px;
      }

      table {
          width: 100%;
      }

      th, td {
          padding: 10px;
      }

      th {
          text-align: right;
          color: black;
          background-color: lavenderblush;
      }

      input[type="text"], input[type="password"] {
          width: 100%;
          padding: 5px;
          border: 1px solid #ccc;
          border-radius: 3px;
          background-color: lightyellow;
      }

      input[type="submit"], input[type="reset"] {
          padding: 10px 20px;
          background-color: pink;
          color: black;
          border: none;
          border-radius: 3px;
          cursor: pointer;
      }

      input[type="submit"]:hover, input[type="reset"]:hover {
          background-color: #f7ac9a;
      }

      input[type="submit"]:focus, input[type="reset"]:focus {
          outline: none;
      }

      input[type="reset"] {
          margin-left: 10px;
      }
  </style>

  <body>
  <form action="${pageContext.request.contextPath}/servlet/AdminServlet?actionType=211" method="post">
      <h4>增加管理员</h4>
      <table>
          <tr>
              <th><label for="username">用户名：</label></td>
              <td><input type="text" id="username" name="username"></td>
          </tr>
          <tr>
              <th><label for="password">密码：</label></td>
              <td><input type="password" id="password" name="password"></td>
          </tr>
          <tr>
              <th><label for="repassword">确认密码：</label></td>
              <td><input type="password" id="repassword" name="repassword"></td>
          </tr>
          <tr>
              <td colspan="2">
                  <div style="text-align: center;">
                      <input type="submit" name="update" value="确定">
                      <input type="reset" name="reset" value="重置">
                  </div>
              </td>
          </tr>
      </table>
  </form>
  </body>
</html>
