<%@ page language="java" import="java.util.*,cake.wx.shopping.vo.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>�û���Ϣ�޸�</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px
}

.STYLE5 {
	font-family: "����";
	font-size: 12px;
}

.STYLE8 {
	color: #FF0000
}

.STYLE9 {
	font-size: 16px
}

.STYLE10 {
	font-size: 16px;
	color: #333333;
}

#Layer1 {
	position: absolute;
	left: 305px;
	top: 5px;
	width: 59px;
	height: 39px;
	z-index: 1;
}
-->
</style>

<script language="javascript">
var points = Array("0","0","0","0","0" );
//�������;
function checkall(){
	checkadd();
	var i=0;
	while (i<=5){
	if(points[i]=="0"){
	alert("����û���Ϣ����ȷ,����!");
	alert(points);
	i=10;
	return false;
	}
	else{
	i++;
	}
	}
}

//����������;
function checkpassword(){
	var pwd = document.getElementById("mypassword").value;

	if (pwd.length<6||pwd.length>16){
		pwd_info.innerHTML = "<font color=\"red\">�����ʽ����ȷ</font>";
		points[0]="0";
		return false;
    }
	else{
	    document.getElementById("pwd_info").innerHTML = "";
		points[0]="1";
		return true;
	}
}
//���������;
function checknewpassword(){
	var pwd = document.getElementById("newpassword").value;

	if (pwd.length<6||pwd.length>16){
		newpwd_info.innerHTML = "<font color=\"red\">�����ʽ����ȷ</font>";
		points[1]="0";
		return false;
    }
	else{
	    document.getElementById("newpwd_info").innerHTML = "";
		points[1]="1";
		return true;
	}
}
//��������Ƿ�һ��;
function checkcpassword(){
	var pwd2 = document.getElementById("cqpassword").value;
	if (pwd2===document.getElementById("newpassword").value){
		document.getElementById("pwdrepeat_info").innerHTML = "";
		points[2]="1";
		return true;
	} else{
		document.getElementById("pwdrepeat_info").innerHTML = "<font color=\"red\">������������벻һ�£���������ԡ�</font>";
		points[2]="0";
		return false;
	}
}

function checktelphone() {
	var tel = document.form1.telphone.value;
	var maxLength = 11; // �绰�������󳤶�

	if (tel.length !== maxLength) {
		alert("������ĵ绰��������!!");
		document.getElementById("tel_info").innerHTML = "<font color=\"red\">������ĵ绰��������������</font>";
		points[3] = "0";
		return false;
	} else {
		document.getElementById("tel_info").innerHTML = "";
		points[3] = "1";
		return true;
	}
}

//�������;
function checkyear(){
	var year=/^\d{2}/
	var yeara=document.getElementById("year").value;
	if(year.test(yeara)){
		points[3]="1";
		year_info.innerHTML=""
		return true;
	}else{
	year_info.innerHTML="<font color=\"red\">����Ϊ2λ��</font>"
	points[3]="0";
	return false;
	}
}



//����ַ;
function checkadd(){
	if(document.form1.address.value==""){
		address_info.innerHTML="<font color=\"red\">��ַ����Ϊ��,��ȷ��</font>";
		points[4]="0";
		return false;
	}else{
	address_info.innerHTML="";
	points[4]="1";
	return true;
	}
}

</script>

</head>

<body bgcolor="#FF9966" leftmargin="0" topmargin="0" marginwidth="0"
		marginheight="0">
	<%
		User user=new User();
		user=(User)request.getSession().getAttribute("loginusername");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
	%>
<table width="637" height="647" border="0" align="center"
			cellpadding="1" cellspacing="0">
			<tr>
				<td align="center" valign="top">
<table width="634" height="46" border="0" align="center" cellpadding="1">
						<tr>
							<td width="542" class="STYLE5">
								<jsp:include page="ui.html"></jsp:include>
						  </td>
					  </tr>
				  </table>
					<form id="form1" name="form1" method="post" onSubmit="return checkall();"
						action="servlet/ContrlServlet?valuetype=8">
						<table width="95%" height="144" border="1" cellpadding="1"
							cellspacing="0" bordercolor="#CCCCCC">
							<tr>
								<td width="28%" height="27" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>�����룺									</div>								</td>
								<td width="33%">
									<div align="center">
										<label for="mypassword">
										<input type="password" name="mypassword" id="mypassword"
											onBlur="checkpassword()" />
										<div id="pwd_info"></div>
										</label>
									</div>								</td>
								<td width="39%" bgcolor="#fffafa" class="STYLE1">
									<span class="desc STYLE5"><span class="desc STYLE6">��</span>���볤��6��16λ����ĸ���ִ�Сд</span>								</td>
							</tr>
							<tr>
								<td height="20" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>�����룺									</div>								</td>
								<td>
									<div align="center">
										<label for="newpassword">
										<input type="password" name="newpassword" id="newpassword"
											onBlur="checknewpassword()" />
										<div id="newpwd_info"></div>
										</label>
									</div>								</td>
								<td bgcolor="#fffafa" class="STYLE1">
									<span class="desc STYLE5"><span class="desc STYLE6">��</span>���볤��6��16λ����ĸ���ִ�Сд</span>								</td>
							</tr>
							<tr>
								<td height="35" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>���ٴ�ȷ�������룺									</div>								</td>
								<td>
									<div align="center">
										<label for="cqpassword">
										<input type="password" name="cqpassword" id="cqpassword"
											onBlur="checkcpassword()" />
										<div id="pwdrepeat_info"></div>
										</label>
									</div>								</td>
								<td bgcolor="#fffafa" class="STYLE1">
									<span class="desc STYLE6 STYLE7"><span
										class="desc STYLE6">��</span>�𰸳���6��30λ����ĸ���ִ�Сд��һ������ռ��λ</span>								</td>
							</tr>
							<tr>
								<td height="20" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>���䣺									</div>								</td>
								<td>
									<div align="center">
										<input type="text" name="year" id="year"
											onBlur="checkyear()"  />
										<div id="year_info"></div>
									</div>								</td>
								<td class="STYLE1">&nbsp;							  </td>
							</tr>
							<tr>
								<td height="20" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>�绰��									</div>								</td>
								<td>
									<div align="center">
										<input type="text" name="telphone" id="telphone" onBlur="checktelphone()" />
										<div id="tel_info"></div>
									</div>								</td>
								<td bgcolor="#fffafa" class="STYLE1">
									<span class="desc STYLE6">��</span><span class="STYLE5">��ϵ�绰���޼�飨���˳��ȣ�</span>								</td>
							</tr>
							<tr>
								<td height="20" class="STYLE1">
									<div align="right">
										<span class="STYLE8">*</span>��ַ��									</div>								</td>
								<td>
									<div align="center">
										<input type="text" name="address" id="adress"/>
										<div id="address_info"></div>
									</div>								</td>
								<td bgcolor="#fffafa" class="STYLE1">
									<span class="desc STYLE6">��</span><span class="STYLE5">��д��ϸ�ļ�ͥסַ</span>								</td>
							</tr>
						</table>
						<p>
							<input type="submit" name="Submit" value="��  ��">

							<input type="reset" name="Submit2" value="�� ��">
						</p>
					</form>
				</td>
			</tr>
</table>
		<!-- End ImageReady Slices -->
</body>
</html>
