<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="memberControl" class="project.member.MemberControl" />
   <jsp:useBean id="em" class="project.member.EmployeeData" />
   <jsp:useBean id="nor" class="project.member.NormalMemberData" />
   <jsp:useBean id="mem" class="project.member.MemberData" />
<jsp:setProperty name="nor" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap-theme.css" />
<link href="../css/innerStyle.css" type="text/css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function modifyBtn() {
	location.href = "NormalMemberUpdateView.jsp";
}

function deleteBtn() {
	location.href = "MemberDeleteView.jsp";
}
</script>
</head>
<body>
<header>
	<%
		mem = (project.member.MemberData) session.getAttribute("member");
		int isLogin =  (int) session.getAttribute("login");
		if ( isLogin == 0 || isLogin == 1) {
	%>
	<div align="right">
		<table clsss="innor" id="innor">
			<tr align=center>
				<td colspan=3> <%= mem.name %> <% out.println( "( " + mem.ID + " ) 환영합니다.") ;%></td>
				
	
	
			</tr>
			<tr align=center>
				<td colspan=3 ><input class="myButton" type="submit" value="로그아웃"></td>
				
			</tr>
		</table>
	</div>
	<%}
		else {
	%>
		<div align="right">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="ID"></td>
				<td><input class="myButton" type="submit" value="로그인"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
				<td><input class="myButton" type="submit" value="회원가입"></td>
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
						<li><a href="/category"><i class="fa fa-folder"></i>운영과목등록
						</a></li>
						<li><a href="/category/1"><i class="fa fa-folder"></i>
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
<h6> 교육센터 통합 운영관리 시스템 - 회원정보관리 - 회원정보 조회</h6>

<h3>회원 정보 조회</h3>

<%
	
	nor = (project.member.NormalMemberData) session.getAttribute("member");

%>

<div >
	<div >
		<form id=NormalMemberReadForm >
		<fieldset >
		<legend>회원정보</legend>
		<table id=NormalMemberReadTable>
			<tr>
				<td> 회원 번호</td>
				<td> <%= nor.memberID %></td>
				<td></td>
			</tr>
			<tr>
				<td>로그인 아이디</td>
				<td> <%= nor.ID %></td>
				<td> </td>
				<td> </td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td> <%= nor.password %></td>
				<td></td>
				<td></td>
			</tr>
			
			<tr>
				<td>성명</td>
				<td> <%=nor.name %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td >거주지주소</td>
				<td colspan=3 > <%=nor.address %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td colspan=2> <%=nor.email %>
					
				</td>
				<td></td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td > <%= nor.phoneNo %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>근무회사명</td>
				<td> <%= nor.centerName %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>부서명</td>
				<td> <%= nor.department %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직위</td>
				<td> <%= nor.position %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직무</td>
				<td> <%= nor.duty %></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		</fieldset>
		<div align=right>
			<input type="button" id=NormalMemberUpdateBtn value="수정" onclick="modifyBtn()">
			<input type="button" id=MemberDeleteBtn value="삭제" onclick="deleteBtn()">
		</div>
		</form>
	</div>
</div>
</body>
</html>