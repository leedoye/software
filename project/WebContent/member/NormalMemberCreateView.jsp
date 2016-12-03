<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean id="memberControl" class="project.member.MemberControl" />
   <jsp:useBean id="em" class="project.member.EmployeeData" />
   <jsp:useBean id="nor" class="project.member.NormalMemberData" />
   <jsp:useBean id="mem" class="project.member.MemberData"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<h6> 교육센터 통합 운영관리 시스템 - 회원정보관리 - 회원정보 등록</h6>

<h3>회원 정보 등록 (회원가입)</h3>

<div width=1440 height=1080>
	<div style="float:left" width=440>
	<img src= "img/memberCreateView.jpg" height=500>
	</div>
	
	<div width=1000 >
		<form id=memberCreateForm action=NormalMemberCreateView.jsp method=post >
		<fieldset >
		<legend>개인정보입력(회원)</legend>
		<table id=memberCreateTable>
			<tr >
				<td colspan=3>회원정보입력</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*로그인 아이디</td>
				<td> <input type ="text"  name=ID > <input type="button" id=idCheck value="중복체크"></td>
				<td> </td>
				<td> </td>
			</tr>
			<tr>
				<td>*비밀번호</td>
				<td> <input type="password" name=password ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*비밀번호확인</td>
				<td> <input type="password" id=checkPassword ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*성명</td>
				<td> <input type="text" name=name ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td >*거주지주소</td>
				<td colspan=3 > <input type="text" name=address style="width:500px; " ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*이메일</td>
				<td colspan=2> <input type="text" name=email >
					<SELECT id="emailList">
						<OPTION selected>직접입력</OPTION>
						<OPTION >naver.com</OPTION>
						<OPTION>daum.net</OPTION>
						<OPTION>gmail.com</OPTION>
					</SELECT>
				</td>
				<td></td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>*휴대폰 번호</td>
				<td > <input type="text" name=phoneNo  style="width:50px; " ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>근무회사명</td>
				<td> <input type="text" name=centerName ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>부서명</td>
				<td> <input type="text" name=department ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직위</td>
				<td> <input type="text" name=position ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직무</td>
				<td> <input type="text" name=duty ></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<div>
			<input type="checkbox" id=personalInformationCollectionUseAgreementStatus> 개인정보 수집 이용동의
			<input type="checkbox" id=personalInformationOfferingAgreementStatus> 개인정보 제공동의
		</div>
		</fieldset>
		<input type="hidden" name=memberType value=2>
		
		<div align=right>
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</div>
		</form>
	</div>
</div>

</body>
</html>