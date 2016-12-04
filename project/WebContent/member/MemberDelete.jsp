<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    	<jsp:useBean id="memberControl" class="project.member.MemberControl" />
   <jsp:useBean id="em" class="project.member.EmployeeData" />
   <jsp:useBean id="nor" class="project.member.NormalMemberData" />
   <jsp:useBean id="mem" class="project.member.MemberData"/>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

	String password = request.getParameter("password");
	

	nor = (project.member.NormalMemberData) session.getAttribute("member");
	
	out.println(nor.memberID);

	if ( password.equals(nor.password) )
	{
		memberControl.delete(nor.memberID);
		session.setAttribute("login", null);
		
		%>
			<script>
			location.href="../main/mainView.jsp";
			</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			history.go(-1);
		</script>
		<%
	}

	
	
	
	
	
%>

</body>
</html>