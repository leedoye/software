<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>

<%
	request.setCharacterEncoding("euc-kr");
	OperateSubjectData osd = new OperateSubjectData();
%>
<%@ page import="operateSubject.OperateSubjectControl"%>
<%@ page import="operateSubject.OperateSubjectData"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="operateSubjectData" class="operateSubject.OperateSubjectData" />
<jsp:setProperty name="operateSubjectData" property="*" />
<jsp:useBean id="memberControl" class="member.MemberControl" />
<jsp:useBean id="em" class="member.EmployeeData" />
<jsp:useBean id="nor" class="member.NormalMemberData" />
<jsp:useBean id="mem" class="member.MemberData" />
<jsp:setProperty name="nor" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap-theme.css" />
<link href="../css/innerStyle.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="../js/function.js">
	function enrollBtn() {
		alert("afd");
		<%request.setCharacterEncoding("euc-kr");%>
		
		<%OperateSubjectControl osc = new OperateSubjectControl();%>
	
		<%osc.insert(operateSubjectData);%>
	}

	function cancelBtn() {
		location.href = "../main/mainView.jsp";
	}
</script>

</head>
<body>
	<header> <%
 	mem = (member.MemberData) session.getAttribute("member");
 	Integer o = (Integer) session.getAttribute("login");
 	Integer isLogin = -1;

 	if (o != null) {

 		isLogin = (Integer) session.getAttribute("login");
 	}

 	if (isLogin == 0 || isLogin == 1) {
 %>
	<div align="right">
		<table clsss="innor" id="innor">
			<tr align=center>
				<td colspan=3><%=mem.name%> <% out.println("( " + mem.ID + " ) ȯ���մϴ�."); %></td>
			</tr>
			<form action="../member/logout.jsp">
				<tr align=center>
					<td colspan=1><input class="myButton" type="submit" value="�α׾ƿ�"></td>
			</form>
			<form action="../member/NormalMemberReadView.jsp">
				<td colspan=1><input class="myButton" type="submit" value="����������"></td>
			</form>
			</tr>

		</table>
	</div>
	<%
		} else {
	%>
	<div align="right">

		<table>
			<form action="../member/loginView2.jsp">
				<tr>
					<td>���̵�</td>
					<td><input type="text" name="ID"></td>
					<td><input class="myButton" type="submit" value="�α���"></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="password"></td>
			</form>
			<form action="../member/RealNameAuthenticationTypeView.jsp">
				<td><input class="myButton" type="submit" value="ȸ������"></td>
			</form>
			</tr>
		</table>
	</div>
	<%
		}
	%> </header>
	<nav>
	<table width="100%">
		<tr align="center">
			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">����� </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="../operateSubject/operateSubjectCreateView.jsp"><i class="fa fa-folder"></i>�������
						</a></li>
						<li><a href="../operateSubject/operateSubjectReadView.jsp"><i class="fa fa-folder"></i>
								�������ȸ</a></li>
					</ul></li>
			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">��������</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								�����������</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								����������ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">����</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i> ������û</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								������ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">������</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								�����򰡵��</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								��������ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">������</font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								�����򰡵��</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								��������ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">������ </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								�������߱�</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								�������߱�������ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">�Խ��� </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								�Խ��ǵ��</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								�Խ�����ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">���ӹ� </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>���ӹ���</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								���ӹ���ȸ</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">ȸ��</font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i> ȸ�����</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								ȸ����ȸ</a></li>
					</ul></li>
			</td>
		</tr>
	</table>
	</nav>
	<section>
	<h6 class=subTitle> �������� ���� ����� �ý��� - �������� - �������</h6>

	<h3 class=mainTitle>����� ���</h3>
	<div>
	<form>
	
	<table align="center" border="0" cellpadding=4 cellspacing=0>
		<tr>
			<td width="70">�����ڵ�</td>
			<td><input type="text" name="subjectCode"></td>	
			<td>����</td>	
			<td><input type="text" size="70" name="subjectProcess"></td>
		</tr>
		<tr>
			<td>�����</td>
			<td colspan='3'><input type="text" size="70" name="subjectName"></td>
	
		</tr>
		<tr>
			<td>�н���ǥ</td>
			<td colspan='3'><input type="text" size="70" name="purpose"></td>
	
		</tr>
		<tr>
			<td>�������</td>
			<td colspan='3'><input type="text" size="70" name="target"></td>		
		</tr>
		<tr>
			<td>������Ư����</td>
			<td colspan='3'><input type="text" size="70" name="feature"></td>		
		</tr>
		<tr>
			<td>�Ѱ����ϼ�</td>
			<td><input type="text" name="totalDate"></td>		
			<td>�Ѱ��ǽð�</td>
			<td><input type="text" name="totalHour"></td>	
		</tr>
		<tr>
			<td>���ǽð�</td>
			<td><input type="text" name="lectureHour"></td>	
			<td>�����ο�</td>
			<td><input type="text" name="recruitNumber"></td>
		</tr>
		<tr>
			<td>������</td>
			<td colspan='3'><input type="text" name="tuition"></td>
		</tr>
		<tr>
			<td colspan='4'>���ǳ���<p></p><textarea  style="color:black" class="myTextarea"  cols="60" rows="6" name="lectureContent"></textarea></td>
		<tr>
			<td style="display:none" colspan='4'>�����̷�<p></p></td>
			<td><textarea style="display:none"   class="myTextarea" cols="60" rows="6" name="changeRecord">""</textarea></td>
		<tr>
			<td><input class="myButton" type="submit" value="���" onclick="enrollBtn()"></td>
			<td><input class="myButton" type="submit" value="���" onclick="cancelBtn()"></td>
		</tr>
	</table>
	</form>
	</div>
	</section>
</body>
</html>