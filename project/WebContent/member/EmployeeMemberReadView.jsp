<%@page import="project.member.EmployeeData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
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
<SCRIPT src="../js/function.js"></SCRIPT>

</head>
<body>
<header>
	<%
		em = (project.member.EmployeeData) session.getAttribute("member");
		Integer o = (Integer) session.getAttribute("login");
		Integer isLogin = -1 ;
		
		if ( o != null )
		{
			
			isLogin = (Integer)session.getAttribute("login");
		}
		
		
		
		if ( isLogin == 0 || isLogin == 1) {
			if (em.memberID.charAt(0) == 'E' || em.memberID.charAt(0) == 'A')
			{
				
			
	%>
	<div align="right">
		<table clsss="innor" id="innor">
			<tr align=center>
				<td colspan=3> <%= em.name %> <% out.println( "( " + em.ID + " ) 환영합니다.") ;%></td>
				
			</tr>
			<form action="../member/logout.jsp">
			<tr align=center>
				<td colspan=1 ><input class="myButton" type="submit" value="로그아웃"></td>
			</form>
			<form action="../member/EmployeeMemberReadView.jsp">
				<td colspan=1 ><input class="myButton" type="submit" value="마이페이지"></td>
			</form>
			</tr>
			
		</table>
	</div>
	<%		}
			else
			{
				%>
	<div align="right">
		<table clsss="innor" id="innor">
			<tr align=center>
				<td colspan=3> <%= em.name %> <% out.println( "( " + em.ID + " ) 환영합니다.") ;%></td>
				
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
				<%
			}
		}
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
<h6> 교육센터 통합 운영관리 시스템 - 회원정보관리 - 직원정보 조회</h6>

<h3>직원 정보 조회 </h3>

<div >
	
	<div  >
		<form id=EmployeeMemberReadForm >
		<fieldset >
		<legend>직원정보</legend>
		<table id=EmployeeMemberReadTable>
			<tr >
				<td >직원번호</td>
				<td> <%= em.memberID %> </td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*로그인 아이디</td>
				<td> <%= em.ID %> </td>
				<td> </td>
				<td> </td>
			</tr>
			
		</table>
		</fieldset>
		
		<fieldset id=contact>
		<legend>연락처 정보 입력</legend>
		<table>
		
			<tr>
				<td>*한글성명</td>
				<td> <%= em.name %></td>
				<td>*영문 성명</td>
				<td> <%=em.enName %></td>
			</tr>
			
			<tr>
				<td>*성별</td>
				<td colspan=2> 
					<input type="radio" id=genderStatus name=genderStatus 
					<% if ( em.genderStatus == 1 ){ out.write("checked");} %>
					> 남자
					<input type="radio" id=genderStatus name=genderStatus <% if (em.genderStatus == 0){ out.write("checked"); }%>> 여자
				</td>
				
				<td>
					
				</td>
			</tr>
		
			<tr>
				<td >주민등록지주소</td>
				<td colspan=3 > <%=em.truthResidence %></td>
				<td></td>
				<td></td>
			</tr>
			
			<tr>
				<td >*거주지주소</td>
				<td colspan=3 > <%=em.address %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*집 전화번호</td>
				<td > <%= em.homePhoneNo %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*휴대폰 번호</td>
				<td > <%= em.phoneNo %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*비상연락 전화번호번호</td>
				<td > <%= em.emergencyContact %></td>
				<td></td>
				<td></td>
			</tr>
			
			<tr>
				<td>*이메일</td>
				<td colspan=2> <%=em.email %>
					
				</td>
				<td></td>
				<td>
					
				</td>
			</tr>
			
			</table>
			</fieldset>
			
			
			<fieldset>
			<legend>계좌정보입력</legend>
			<table>
			<tr>
				<td>은행코드</td>
				<td> </td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>계좌번호</td>
				<td> <input type="text" id=accountNumber ></td>
				<td></td>
				<td></td>
			</tr>
			
			</table>
			</fieldset>
			
			<fieldset>
			<legend>추가정보입력</legend>
			
			
			<table>
			
			<tr>
				<td>근무센터명</td>
				<td> <%=em.centerDepartmentName %></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>강의과목명</td>
				<td> <input type="text" name=subjectName ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>경력명</td>
				<td>경력 유형구분</td>
				<td>경력설명</td>
				<td></td>
			</tr>
			<tr>
				<td>정보처리기사</td>
				<td>자격증</td>
				<td>-</td>
				<td></td>
			</tr>
			
			
			
			</table>
			<div>
				<input type="checkbox" id=personalInformationCollectionUseAgreementStatus> 개인정보 수집 이용동의
				<input type="checkbox" id=personalInformationOfferingAgreementStatus> 개인정보 제공동의
			</div>
			</fieldset>
			<div align=right>
				<input type="button" class=myButton value="수정" onclick="employeeUpdateBtn()">
				<input type="button" class=myButton value="삭제" onclick="memberDeleteBtn()">
			</div>
		</form>
	</div>
</div>

</body>
</html>