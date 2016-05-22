<%@ page %><%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 19.05.2016
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>TODO LIST</title></head>
<body>
<A HREF="newTodo/newToDoForm.jsp">Start</A>

<% response.sendRedirect("newTodo/newToDoForm.jsp"); %>
</body>
</html>
