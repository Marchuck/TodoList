<%@ page import="pl.lukaszmarczak.todolist.TodoUtils" %>
<%@ page import="pl.lukaszmarczak.todolist.A" %>
<%@ page import="pl.lukaszmarczak.todolist.HibernateManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="session"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String index = request.getParameter("todo_id"); %>

<% String text = request.getParameter("todo_text"); %>
<% String date = request.getParameter("todo_date"); %>
<% boolean done = request.getParameter("todo_done") != null; %>

<% A toUpdateItem = new A();%>
<% toUpdateItem.setId(index);%>
<% toUpdateItem.setText(text);%>
<% toUpdateItem.setDate(date);%>
<%TodoUtils.log("value of done: " + done);%>
<% toUpdateItem.setDone(done);%>
<% HibernateManager.update(toUpdateItem); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>