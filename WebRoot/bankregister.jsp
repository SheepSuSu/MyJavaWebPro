<%@ page language="java" import="cake.wx.shopping.vo.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>ע�����û�</title>
		<style type="text/css">
<!--
.STYLE2 {
	color: black;
	font-size: 16px;
	font-weight: bold;
}

.STYLE3 {
	font-size: 12px
}

.STYLE8 {
	color: #FF0000
}

.STYLE5 {
	font-family: "����";
	font-size: 12px;
}
-->
</style>

		<script src="setday.js"></script>

		<script language="javascript">
var points = Array("0","0","0","0","0","0","0","0");
//�������;
function checkall(){
	checkemail();
	checkBox();
	if(checkyear()){
		var i=0;
		while (i<=7){
		if(points[i]=="0"){
			alert("����û���Ϣ����ȷ,����!");
//			alert(points);
			i=10;
			return false;
		}else{i++;}
		};
	}else{
		return false;
	}
}
//����û���;
function checkusername(){
	var msg=new Array(
	"<font color=\"red\" class=\"STYLE1\" >�û�������Ϊ��</font>",
	"<font color=\"red\" class=\"STYLE1\" >�û������Ȳ���ȷ</font>",
	"" );
	var username = 	document.getElementById("regbankusername").value;
	if (username == "") {
	    usermessage(0);
		points[0]="0";
		return false;
	}
	if(username.length<4||username.length>18){
	    usermessage(1);
		points[0]="0";
	    return false;
	}else{
	usermessage(2);
	points[0]="1";
	return true;
	}
	function usermessage(id){
		check_info.innerHTML = msg[id];	
	}
}
//����������;
function checkpassword(){
	var pwd = document.getElementById("regbankpassword").value;

	if (pwd.length<6||pwd.length>16){
		pwd_info.innerHTML = "<font color=\"red\">�����ʽ����ȷ</font>";
		points[1]="0";
		return false;
    }
	else{
	    document.getElementById("pwd_info").innerHTML = "";
		points[1]="1";
		return true;
	}
}
//��������Ƿ�һ��;
function checkcpassword(){
	var pwd2 = document.getElementById("cpassword").value;
	if (pwd2==document.getElementById("regbankpassword").value){
		document.getElementById("pwdrepeat_info").innerHTML = "";
		points[2]="1";
		return true;
	} else{
		document.getElementById("pwdrepeat_info").innerHTML = "<font color=\"red\">������������벻һ�£���������ԡ�</font>";
		points[2]="0";
		return false;
	}
}


</script>
	</head>

	<body bgcolor=#ffe4e1>
	<%
		User user=new User();
		user=(User)request.getSession().getAttribute("loginusername");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
  	%>
		<table width="71%" height="295" border="0" align="center"
			cellpadding="1" cellspacing="0">
			<tr>
				<td></td>
			</tr>
			<tr>
				<td align="center" bgcolor=#f0f8ff>
					<div id="content">
						<div id="container">
							<div class="topArc">
								<span class="left"><span class="right"></span>
								</span>
							</div>
							<p class="declare">
								��ע�⣺����
								<span class="STYLE3"><span class="STYLE8">*</span>
								</span>����Ŀ������д��
							</p>
							<form action="servlet/ContrlServlet?valuetype=11" method="post" onSubmit="return checkall(this);" name="form" id="form"
								autocomplete="off">
								<fieldset>
									<div align="left">
										<legend>
											<span class="STYLE2"> ��ѡ�������û���</span>
										</legend>
									</div>
									<table width="663" class="blur">
										<tbody>
											<tr>
												<th width="144" valign="top">
													<label for="username">
														<div align="right" id="username">
															<i><br />
															</i><span class="STYLE3"><span class="STYLE8">*</span>���������ʻ���</span>
														</div>
													</label>
												</th>
												<td width="233" class="input">
													<input class="text" type="text" id="regbankusername"
														name="regbankusername" onblur="checkusername()" />
													<div id="check_info">
													</div>
													<br />
												</td>
												<td width="270" bgcolor=#ffe4e1 class="desc "
													chgmodeblur="chgModeBlur" borderColor="#FFFFFF">
													<font size="2">&middot;����ĸa��z(�����ִ�Сд)������0��9���㡢���Ż��»������<br />
														&middot;ֻ�������ֻ���ĸ��ͷ�ͽ�β<br /> &middot;�û�������Ϊ4��18���ַ�</font>
												</td>
											</tr>
										</tbody>
									</table>
								</fieldset>
								<fieldset>
									<div align="left"></div>
									<div align="left">
										<legend>
											<span class="STYLE2"> ����д��ȫ����</span><span>(&nbsp;������Ϣ�Ա��������ʺŰ�ȫ��Ϊ��Ҫ������������д���μ�&nbsp;)</span>
										</legend>
									</div>
									<table width="666" class="blur">
										<tbody>
											<tr>
												<th width="146" class="STYLE3">
													<label for="password">
														<div align="right" id="password">
															<span class="STYLE8">*</span><span class="STYLE5">
																��¼���룺</span>
														</div>
													</label>
												</th>
												<td width="235" class="input">
													<input class="text" type="password" name="regbankpassword"
														onblur="checkpassword()" />
													<div id="pwd_info"></div>
													<span></span>
												</td>
												<td width="269" rowspan="2" bgcolor=#ffe4e1 class="desc">
													<font size="2">���볤��6��16λ����ĸ���ִ�Сд</font>
												</td>
											</tr>
											<tr>
												<th class="STYLE3">
													<label for="cpassword">
														<div align="right">
															<span class="STYLE8">*</span>�ٴ�ȷ�����룺
														</div>
													</label>
												</th>
												<td class="input">
													<input class="text" id="cpassword" type="password"
														name="cpassword" onblur="checkcpassword()"/>
													<div id="pwdrepeat_info"></div>
													<span></span>
												</td>
											</tr>
										</tbody>
									</table>
									
									
									<div class="hr"></div>
									<table width="666" class="blur">
										<tbody>
											<tr>
												<th width="148" valign="top">
													<label for="mail">
														<div align="right" id="mail">
															<span class="STYLE3"><span class="STYLE8">*</span>�˻���ʼ���</span>��
														</div>
													</label>
												</th>
												<td width="238" valign="top" class="input">
													<input class="text" id="regeRMB" name="regeRMB"
														 />
													<div id="RMB_info"></div>
													<span></span>
												</td>
												<td width="264" bgcolor=#ffe4e1 class="desc">
													<font size="2">&middot;��ʼ�˻�����λ��RMB��</font>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="hr"></div>
									<table class="blur">
										<tbody>
											<tr>
												<th>
													<label for="usercheckcode"></label>
												</th>
												<td class="input" id="usercheckcode">
													&nbsp;
												</td>
												<td></td>
											</tr>
											<tr>
												<th>
													<span class="STYLE8">*</span>
												</th>
												<td bgcolor=#eee8aa>
													<input id="agree" title="�Ƿ�ͬ���������" type="checkbox"
														checked="checked" name="agree" onclick="checkBox()" />
													���ѿ�����ͬ�⡶
													<a href="#">Cake��������</a>��
													<br />
													<font size="2"><span></span>
													</font>
												</td>
											</tr>
											<tr></tr>
										</tbody>
									</table>
								</fieldset>
								<div id="btn">
									<div align="center">
										<input name="submit" type="submit" id="confirm"
											 value="ע���ʺ�" />
										<span></span>
									</div>
								</div>
							</form>
							<div class="bottomArc">
								<span class="left"><span class="right"></span>
								</span>
							</div>
						</div>
						<div id="footer">
							<br />
							&nbsp;2023-~&nbsp;Cake������
						</div>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
