<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
@import "../css/default1.css";
</style>
		<script>
function yulan()
{
var fileext=document.form1.UpFile.value.substring(document.form1.UpFile.value.lastIndexOf("."),document.form1.UpFile.value.length)
         fileext=fileext.toLowerCase()
    
         if ((fileext!='.jpg')&&(fileext!='.gif')&&(fileext!='.jpeg')&&(fileext!='.png')&&(fileext!='.bmp'))
         {
             alert("�Բ���ϵͳ��֧�ֱ�׼��ʽ����Ƭ������������ʽ�������ϴ���лл !");
              document.form1.UpFile.focus();
         }
         else
         {
         //alert(''+document.form1.UpFile.value)//������ĳ�Ԥ��ͼƬ�����
   document.getElementById("preview").innerHTML="<img src='"+document.form1.UpFile.value+"' width=120 style='border:6px double #ccc'>"
         }


}


</script>


	</head>

	<body>
		<form name="form1" action="${pageContext.request.contextPath}/servlet/AdminServlet?actionType=311" method="post">
			<br />
			<br />

			<table width="351" height="190" border="1" align="center"
				cellpadding="1" cellspacing="0">
				<tr>
					<td height="31" colspan="2" background="../imag/header-bg1.png">
						<div align="center">
							������Ʒ
						</div>
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ���ƣ�
					</td>
					<td>
						<input type="text" name="pname" />
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ���ۣ�
					</td>
					<td>
						<input type="text" name="price" />
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ������
					</td>
					<td>
						<input type="text" name="pcount" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="preview" ></div>
					</td>
				</tr>
				<tr>
					<td>
						��ƷͼƬ��
					</td>
					<td>
						<input type="file" name="UpFile" onchange="yulan()" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input type="submit" name="Submit" value="����" />
							<input type="reset" name="reset" value="����" />
						</center>

					</td>
				</tr>
			</table>

			<br />
		</form>
	</body>
</html>
