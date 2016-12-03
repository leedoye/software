<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <jsp:useBean id="memberControl" class="project.member.MemberControl" />
   <jsp:useBean id="em" class="project.member.EmployeeData" />
   <jsp:useBean id="nor" class="project.member.NormalMemberData" />
   <jsp:useBean id="mem" class="project.member.MemberData" />
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
	function deleteBtn()
	{
		
		var password = document.getElementById(password);
		
		alert(id);
		alert(password);
	}

</script>
</head>
<body>

<%
	int memberType = (int) session.getAttribute("login");
	
	if ( memberType == 0 )
	{
		nor = (project.member.NormalMemberData) session.getAttribute("member");
	}
	
	else
	{
		em = (project.member.EmployeeData) session.getAttribute("member");
	}
	
	mem = (project.member.MemberData) session.getAttribute("member");
	
	
%>

<h6> 교육센터 통합 운영관리 시스템 - 회원정보관리 - 회원 정보 삭제</h6>

<h3>회원 정보 삭제</h3>

<div>
	<form name=f>
	<fieldset>
		<legend> 회원탈퇴 </legend>
		<table>
		
			<tr>
				<td>성명</td>
				<td ><%= mem.name %></td>
			</tr>
			<tr>
				<td>회원 아이디</td>
				<td ><%= mem.ID %></td>
			</tr>
			<tr>
				<td>현재 비밀번호</td>
				<td ><input type="password" id=password name=password></td>
			</tr>
		</table>
		<div align = right>
			<input type="button" id=memberDeleteBtn value="삭제" onclick="deleteBtn()">
			<input type="button" id=cancleBtn value="취소">
		</div>
	</fieldset>
	
	</form>
</div>

<div>

</div>

</body>
</html>