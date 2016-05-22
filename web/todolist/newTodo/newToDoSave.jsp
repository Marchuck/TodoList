<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<%@ page import="pl.lukaszmarczak.todolist.TodoDbHibernateManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="application"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String text = request.getParameter("todo_text"); %>
<% String date = request.getParameter("todo_date"); %>
<% TodoDbHibernateManager.save(text, date); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>