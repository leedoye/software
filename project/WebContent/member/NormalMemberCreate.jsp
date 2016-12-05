<%@ page contentType="text/html;charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="info" class="project.member.NormalMemberData" />
<jsp:useBean id="memberControl" class="project.member.MemberControl" />
<jsp:useBean id="em" class="project.member.EmployeeData" />
<jsp:setProperty name="info" property="*" />
<jsp:setProperty name="em" property="*" />
<html>
<head><title>setProperty 테스트</title></head>
<body>

<% String value = request.getParameter("memberType"); %>
<%
	if ( value.equals("0"))
	{
		info.memberID = "S" + memberControl.sCount++;
		memberControl.insertNormalMember(info);
	}
	else
	{
		em.memberID = "E" + memberControl.eCount++;
		memberControl.insertEmployee(em);
	}
	
	
%>
<script>
               alert("회원가입 성공!");
               location.href="../main/mainView.jsp";
               
</script>
</body>
</html>