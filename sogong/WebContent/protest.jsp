<%@ page contentType="text/html;charset=EUC-KR" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="info" class="contact.ContactInfo" />
<jsp:setProperty name="info" property="*" />
<html>
<head><title>setProperty �׽�Ʈ</title></head>
<body>
<h3>setProperty �׽�Ʈ</h3>
�̸� : <%= info.getMemberID() %>
<p>
Email : <%= info.getEmail() %><p>
Email : <%= info.getId() %><p>
Email : <%= info.getEmail() %>
</body>
</html>