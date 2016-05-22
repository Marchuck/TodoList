<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.TodoItem" scope="application"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String text = request.getParameter("todo_text"); %>
<% String date = request.getParameter("todo_date"); %>
<% TodoDbManager.save(text, date); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>