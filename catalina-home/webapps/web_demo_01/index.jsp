<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tomcat session share 01</title>
</head>
<body>
TOMCAT - 8080
<br/>
sessionID : <%= session.getId()%>
<br/>
<%
  Object loginUser = session.getAttribute("loginUser");
  if(loginUser != null && loginUser.toString().length()>0){
    out.println("session 有值， loginUser = " + loginUser);
  } else {
    session.setAttribute("loginUser","Sky");
    out.println("session 无值 ！");
  }
%>
</body>
</html>
