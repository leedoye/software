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
				<td colspan=3> <%= mem.name %> <% out.println( "( " + mem.ID + " ) 환영합니다.") ;%></td>
			</tr>
			<form action="../member/logout.jsp">
			<tr align=center>
				<td colspan=1 ><input class="myButton" type="submit" value="로그아웃"></td>
			</form>
			<form action="../member/NormalMemberReadView.jsp">
				<td colspan=1 ><input class="myButton" type="submit" value="마이페이지"></td>
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
				<td>아이디</td>
				<td><input type="text" name="ID"></td>
				<td><input class="myButton" type="submit" value="로그인"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
		</form>
		<form action="../member/RealNameAuthenticationTypeView.jsp">
				<td><input class="myButton" type="submit" value="회원가입"></td>
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
						color="black" size="4">운영과목 </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="../operateSubject/operateSubjectCreateView.jsp"><i class="fa fa-folder"></i>운영과목등록
						</a></li>
						<li><a href="../operateSubject/operateSubjectReadView.jsp"><i class="fa fa-folder"></i>
								운영과목조회</a></li>
					</ul></li>
			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">개설과정</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								개설과정등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								개설과정조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">수강</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i> 수강신청</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								수강조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">강의평가</font> <i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								강의평가등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								깡의평가조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">업무평가</font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								업무평가등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								업무평가조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">수료증 </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								수료증발급</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								수료증발급정보조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">게시판 </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>
								게시판등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								게시판조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">모임방 </font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i>모임방등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								모임방조회</a></li>
					</ul></li>

			</td>

			<td>
				<li class="dropdown"><a href="#" id="dropdownCategoryMenu"
					data-toggle="dropdown"><i class="fa fa-folder-open"></i><font
						color="black" size="4">회원</font><i class="caret"></i></a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category"><i class="fa fa-folder"></i> 회원등록</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
								회원조회</a></li>
					</ul></li>
			</td>
		</tr>
	</table>
	</nav>
	<section>
	<h6>교육센터통합운영관리 - 과목관리 - 운영과목관리 - 운영과목조회</h6>
	<h3>조회 조건</h3>
	<hr size="2" color="gray">
	<p>
	<div id="form">
		<form name="inputform" class="input_form">
			<table align="center">
				<tr>
					<td align="right">수강대상</td>
					<td><input type="text" name="target"></td>
					<td align="right">과정</td>
					<td><input type="text" name="subjectProcess"></td>
					<td><input class="myButton" type="submit" value="조회" onclick="readBtn()"></td>
				</tr>

				<tr>
					<td align="right">과정코드</td>
					<td><input type="text" name="subjectCode"></td>
					<td align="right">과목명</td>
					<td><input type="text" name="subjectName"></td>
					<td><input class="myButton" type="submit" value="수정"></td>
				</tr>
			</table>
			<hr size="2" color="gray">
		</form>
	</div>
	<h3>운영과목편람</h3>
	</section>


	<div>
		<form id=operateSubjectForm>
			<fieldset>
				<legend>운영과목정보</legend>
				<table id=operateSubjectTable align="center">
					
					<tr>
						<td>과목의특장점</td>
						<td><%=osd.feature%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>강의시간</td>
						<td><%=osd.lectureHour%></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>목표</td>
						<td><%=osd.purpose%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>모집인원</td>
						<td colspan=3><%=osd.recruitNumber%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>과목코드</td>
						<td colspan=2><%=osd.subjectCode%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>과목명</td>
						<td><%=osd.subjectName%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>과정</td>
						<td><%=osd.subjectProcess%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>수강대상</td>
						<td><%=osd.target%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>총강의일수</td>
						<td><%=osd.totalDate%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>총강의시간</td>
						<td><%=osd.totalHour%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>수강료</td>
						<td><%=osd.tuition%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>세부강의내역</td>
						<td><%=osd.lectureContent%></td>
						<td></td>
					</tr>
					<tr>
						<td>변경이력</td>
						<td><%=osd.changeRecord%></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><input class="myButton" type="button"
							id=NormalMemberUpdateBtn value="수정" onclick="modifyBtn()"></td>
						<td><input class="myButton" type="button" id=MemberDeleteBtn
							value="삭제" onclick="deleteBtn()"></td>
					</tr>
				</table>

			</fieldset>

		</form>
	</div>



</body>
</html>