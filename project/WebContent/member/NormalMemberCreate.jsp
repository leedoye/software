<%@ page contentType="text/html;charset=EUC-KR" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="info" class="project.member.NormalMemberData" />
<jsp:useBean id="memberControl" class="project.member.MemberControl" />
<jsp:setProperty name="info" property="*" />
<html>
<head><title>setProperty 테스트</title></head>
<body>
<h3>setProperty 테스트</h3>
<% String value = request.getParameter("memberType"); %>
<%
	if ( value.equals("1"))
	{
		info.memberID = "S" + memberControl.sCount++;
		
	}
	else
	{
		info.memberID = "E" + memberControl.eCount++;
	}
	out.println(info.password);
	memberControl.insertNormalMember(info);
%>
<script>
               alert("회원가입 성공!");
               
</script>
</body>
</html>