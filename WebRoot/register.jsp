<%@ page contentType="text/html; charset=gbk" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>ע�����û�</title>
		<style type="text/css">
<!--
.STYLE2 {
	color: #F18650;
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

		<script src="js/setday.js"></script>

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
			alert(points);
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
	var username = 	document.getElementById("regusername").value;
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
	var pwd = document.getElementById("regpassword").value;
	if (pwd.length>=6&&pwd.length<=16){
		document.getElementById("pwd_info").innerHTML = "";
		console.log("�����޴���")
		points[1]="1";
		return true;
    }
	else{
		pwd_info.innerHTML = "<font color=\"red\">�����ʽ����ȷ</font>";
		points[1]="0";
		return false;
	}
}
//��������Ƿ�һ��;
function checkcpassword(){
	var pwd2 = document.getElementById("cpassword").value;
	if (pwd2==document.getElementById("regpassword").value){
		document.getElementById("pwdrepeat_info").innerHTML = "";
		points[2]="1";
		return true;
	} else{
		document.getElementById("pwdrepeat_info").innerHTML = "<font color=\"red\">������������벻һ�£���������ԡ�</font>";
		points[2]="0";
		return false;
	}
}
//�������;
function checkyear(){
	var year=/^\d{4}/
	var yeara=document.getElementById("regage").value;
	if(year.test(yeara)){
//		if((parseFloat(yeara)>1910)&&(parseFloat(yeara)<2007)){
			points[3]="1";
			return true;
//		}else{ 
//		alert("����û���Ϣ����ȷ,����!");
//		points[3]="0";
//		return false;
//		}
	}else{
	alert("����û���Ϣ����ȷ,����!");
	points[3]="0";
	return false;
	}
}
function clearyear(){
	document.form1.year.value="";
}
//���绰;
function checktelphone(){
	var tel = document.form.regtel.value;
	var maxLength = 11; // �绰�������󳤶�
	if(tel.length !== maxLength){
		alert("��������ֻ���������!!");
		document.getElementById("tel_info").innerHTML = "<font color=\"red\">��������ֻ���������,������</font>"
		points[4]="0";
		return false;
	}
	else{
		document.getElementById("tel_info").innerHTML = "";
		points[4]="1";
		return true;
	}
}
//���Email
function checkemail(){
	var email=document.getElementById("regemail").value;
	var reg=new RegExp("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
	if(reg.test(email)){
		document.getElementById("email_info").innerHTML = "";
		points[5]="1";
	}
	else{
	document.getElementById("email_info").innerHTML = "E-mail��ַ��Ч";
	points[5]="0";
	}
}
//����ַ;
function checkadd(){

	if(document.getElementById("regaddr").value==""){
		address_info.innerHTML="��ַ����Ϊ��";
		points[6]="0";
	}else{
	address_info.innerHTML="";
	points[6]="1";
	}
}
//���Э��;
function checkBox(){
	if (document.getElementById("agree").checked){
	points[7]="1";
	}
	else {
		points[7]="0";
		return;
	}
}


</script>
	</head>

	<body bgcolor=#fff0f5>
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
							<form action="servlet/ContrlServlet?valuetype=2" method="post" onSubmit="return checkall(this);" name="form" id="form"
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
															</i><span class="STYLE3"><span class="STYLE8">*</span>ͨ��֤�û�����</span>
														</div>
													</label>
												</th>
												<td width="233" class="input">
													<input class="text" type="text" id="regusername"
														name="regusername" onblur="checkusername()" />
													<div id="check_info">
													</div>
													<br />
												</td>
												<td width="270" bgcolor=#fff0f5 class="desc "
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
													<input class="text" type="password" id="regpassword"
														   name="regpassword" onblur="checkpassword()" />
													<div id="pwd_info"></div>
													<span></span>
												</td>
												<td width="269" rowspan="2" bgcolor=#fff0f5 class="desc">
													<font size="2">���볤��6��16λ����ĸ���ִ�Сд</font>
												</td>
											</tr>
											<tr>
												<th class="STYLE3">
													<label for="cpassword">
														<div align="right">
															<span class="STYLE8">*</span>�ظ���¼���룺
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
									<table class="blur">
										<tbody>
											<tr>
												<th width="153" class="STYLE3">
													<label for="question">
														<div align="right" id="question">
															������
														</div>
													</label>
												</th>
												<td width="232" class="input">
													<input name="regname" type="text" class="text" />
													<span></span>
												</td>
												<td width="269" rowspan="2" bgcolor=#fff0f5 class="desc">
													<font size="2">����6��30λ����ĸ���ִ�Сд��һ������ռ��λ�������޸��ʺ����루��δ��ͨ��</font>
												</td>
											</tr>
											<tr>
												<th class="STYLE3">
													<label for="answer">
														<div align="right" id="answer" >
															<span class="STYLE8">*</span>�������ڣ�
														</div>
													</label>
												</th>
												<td width="232" class="input">
													<INPUT id="regage" onclick="setday(this)" name="regage" runat="server" />
													<span></span>
												</td>
												<span></span>
												<td width="2"></td>
											</tr>
										</tbody>
									</table>
									<div class="hr"></div>
									<table width="670" bgcolor="#f0f8ff" class="blur">
										<tbody>
											<tr>
												<th width="150" class="STYLE3">
													<label>
														<div align="right">
															<span class="STYLE8">*</span>�Ա�
														</div>
													</label>
												</th>
												<td width="234" class="input">
<%--													<label for="year"></label>--%>
<%--													<label for="month"></label>--%>
													<label for="regsex">
														<input id="regsex" title="�Ա�" type="radio"
															checked="checked" value="��" name="regsex" />
														�� &nbsp;&nbsp;&nbsp;&nbsp;
														<input id="regsex" type="radio" value="Ů" name="regsex" />
														Ů
													</label>
												</td>
												<td width="270" bgcolor="#f0f8ff" class="desc"></td>
											</tr>
											<tr>
												<th class="STYLE3">
													<label>
														<div align="right">
															<span class="STYLE8">*</span>�ֻ��绰��
														</div>
													</label>
												</th>
												<td class="input" bgcolor="#f0f8ff">
													<LABEL id=female>
														<input name="regtel" id="regtel" type="text" class="text"
															onblur="checktelphone()" />
														<div id="tel_info"></div>
													</LABEL>
												</td>
											</tr>
											<tr>
												<th>
													<label for="firstname" class="STYLE3">
														<div align="right" id="firstname">
															<span class="STYLE8">*</span>��ַ��
														</div>
													</label>
												</th>
												<td class="input">
													<input class="text" id="regaddr" name="regaddr"
														onblur="checkadd()" />
													<div id="address_info"></div>
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
															<span class="STYLE3"><span class="STYLE8">*</span>��������</span>��
														</div>
													</label>
												</th>
												<td width="238" valign="top" class="input">
													<input class="text" id="regemail" name="regemail"
														 />
													<div id="email_info"></div>
													<span></span>
												</td>
												<td width="264" bgcolor=#fff0f5 class="desc">
													<font size="2">&middot;��д����֤�������䣬ͨ��֤��ȫ�б���</font>
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
												<td bgcolor=#ffb6c1>
													<input id="agree" title="�Ƿ�ͬ���������" type="checkbox"
														checked="checked" name="agree" onclick="checkBox()" />
													���ѿ�����ͬ�⡶
													<a href="#">CakeС���������</a>��
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
										<a href="index.jsp">��¼</a><span></span>
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
							&nbsp;2023-~&nbsp;CakeС�꿪����
						</div>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
