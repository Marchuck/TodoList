<%@ page import="pl.lukaszmarczak.todolist.TodoUtils" %>
<%@ page import="pl.lukaszmarczak.todolist.HibernateManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="session"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String text = request.getParameter("todo_text"); %>
<% String date = request.getParameter("todo_date"); %>
<% HibernateManager.save(text, date); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>