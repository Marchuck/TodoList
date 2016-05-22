<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.TodoItem" scope="application"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String index = request.getParameter("todo_id"); %>
<% TodoDbManager.delete(Long.parseLong(index)); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>