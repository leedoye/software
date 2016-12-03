<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="nor" class="project.member.NormalMemberData" />
<jsp:useBean id="memberControl" class="project.member.MemberControl" />
<jsp:setProperty name="nor" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/tableCss.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h6> 교육센터 통합 운영관리 시스템 - 회원정보관리 - 회원정보 수정</h6>

<h3>회원 정보 수정</h3>

<%
	nor = (project.member.NormalMemberData) session.getAttribute("member");

%>


<div width=1440 height=1080>
	
	<div width=1000 >
		<form id=memberCreateForm >
		<fieldset >
		<legend>비밀번호변경</legend>
		<table id=memberUpdateTable>
			<tr >
				<td colspan=3>회원정보입력</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>회원 아이디</td>
				<td> <input type="text" id=name value=<%=nor.ID %>> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td> <input type="password" id=password ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td> <input type="password" id=checkPassword ></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		</fieldset>
		<fieldset>
		<legend>개인정보</legend>
		<table>
			<tr>
				<td>*성명</td>
				<td> <input type="text" id=name value=<%=nor.name %>></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td >*거주지주소</td>
				<td colspan=3 > <input type="text" id=address style="width:500px; " value= <%= nor.address %>></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>*이메일</td>
				<td colspan=2> <input type="text" id=email value=<%= nor.email %>  >
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
				<td > <input type="text" id=phoneNo value=<%=nor.phoneNo %>></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>근무회사명</td>
				<td> <input type="text" id=company value=<%=nor.centerName %> ></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>부서명</td>
				<td> <input type="text" id=department value=<%=nor.department %>></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직위</td>
				<td> <input type="text" id=position  value=<%= nor.position %>></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>직무</td>
				<td> <input type="text" id=duty value=<%= nor.duty %>></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		</fieldset>
		<div align=right>
			<input type="submit" value="수정">
			<input type="reset" value="취소">
		</div>
		</form>
	</div>
</div>
</body>
</html>