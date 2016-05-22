<%@ page import="pl.lukaszmarczak.todolist.TodoUtils" %>
<%@ page import="pl.lukaszmarczak.todolist.HibernateManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="session"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String index = request.getParameter("todo_id"); %>
<% HibernateManager.delete(index); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>