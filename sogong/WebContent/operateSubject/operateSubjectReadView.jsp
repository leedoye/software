<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
	OperateSubjectData osd = new OperateSubjectData();
%>
<%@ page import="operateSubject.OperateSubjectControl"%>
<%@ page import="operateSubject.OperateSubjectData"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="operateSubjectData"
	class="operateSubject.OperateSubjectData" />
<jsp:setProperty name="operateSubjectData" property="*" />
<jsp:useBean id="memberControl" class="member.MemberControl" />
<jsp:useBean id="em" class="member.EmployeeData" />
<jsp:useBean id="nor" class="member.NormalMemberData" />
<jsp:useBean id="mem" class="member.MemberData" />
<jsp:setProperty name="nor" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap-theme.css" />
<link href="../css/innerStyle.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="../js/function.js">

	function readBtn() {
		
<%request.setCharacterEncoding("euc-kr");%>
	
<%OperateSubjectControl osc = new OperateSubjectControl();%>
	
<%osd = osc.select(operateSubjectData);%>
	}

	function updateBtn() {
		location.href = "operateSubjectUpdateView.jsp";
	}
</script>

</head>
<body>

	<header>
<%
		
	
		mem = (member.MemberData) session.getAttribute("member");
		Integer o = (Integer) session.getAttribute("login");
		Integer isLogin = -1 ;
		
		
		if ( o != null )
		{
			
			isLogin = (Integer)session.getAttribute("login");
		}
		
		
		
		if ( isLogin == 0 || isLogin == 1) {
	%>
	<div align="right">
		<table clsss="innor" id="innor">
			<tr align=center>
				<td colspan=3> <%= mem.name %> <% out.println( "( " + mem.ID + " ) ȯ���մϴ�.") ;%></td>
			</tr>
			<form action="../member/logout.jsp">
			<tr align=center>
				<td colspan=1 ><input class="myButton" type="submit" value="�α׾ƿ�"></td>
			</form>
			<form action="../member/NormalMemberReadView.jsp">
				<td colspan=1 ><input class="myButton" type="submit" value="����������"></td>
			</form>
			</tr>
			
		</table>
	</div>
	<%}
		else {
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
	<% }
	%>
	</header>
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
	<h6>�����������տ���� - ������� - �������� - �������ȸ</h6>
	<h3>��ȸ ����</h3>
	<hr size="2" color="gray">
	<p>
	<div id="form">
		<form name="inputform" class="input_form">
			<table align="center">
				<tr>
					<td align="right">�������</td>
					<td><input type="text" name="target"></td>
					<td align="right">����</td>
					<td><input type="text" name="subjectProcess"></td>
					<td><input class="myButton" type="submit" value="��ȸ" onclick="readBtn()"></td>
				</tr>

				<tr>
					<td align="right">�����ڵ�</td>
					<td><input type="text" name="subjectCode"></td>
					<td align="right">�����</td>
					<td><input type="text" name="subjectName"></td>
					<td><input class="myButton" type="submit" value="����"></td>
				</tr>
			</table>
			<hr size="2" color="gray">
		</form>
	</div>
	<h3>��������</h3>
	</section>


	<div>
		<form id=operateSubjectForm>
			<fieldset>
				<legend>���������</legend>
				<table id=operateSubjectTable align="center">
					
					<tr>
						<td>������Ư����</td>
						<td><%=osd.feature%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>���ǽð�</td>
						<td><%=osd.lectureHour%></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>��ǥ</td>
						<td><%=osd.purpose%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�����ο�</td>
						<td colspan=3><%=osd.recruitNumber%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�����ڵ�</td>
						<td colspan=2><%=osd.subjectCode%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�����</td>
						<td><%=osd.subjectName%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>����</td>
						<td><%=osd.subjectProcess%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�������</td>
						<td><%=osd.target%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�Ѱ����ϼ�</td>
						<td><%=osd.totalDate%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>�Ѱ��ǽð�</td>
						<td><%=osd.totalHour%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>������</td>
						<td><%=osd.tuition%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>���ΰ��ǳ���</td>
						<td><%=osd.lectureContent%></td>
						<td></td>
					</tr>
					<tr>
						<td>�����̷�</td>
						<td><%=osd.changeRecord%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><input class="myButton" type="button"
							id=NormalMemberUpdateBtn value="����" onclick="modifyBtn()"></td>
						<td><input class="myButton" type="button" id=MemberDeleteBtn
							value="����" onclick="deleteBtn()"></td>
					</tr>
				</table>

			</fieldset>

		</form>
	</div>



</body>
</html>