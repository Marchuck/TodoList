<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<%@ page import="pl.lukaszmarczak.todolist.A" %>
<%@ page import="pl.lukaszmarczak.todolist.TodoDbHibernateManager" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="application"/>
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
<%TodoDbManager.log("value of done: " + done);%>
<% toUpdateItem.setDone(done);%>
<% TodoDbHibernateManager.update(toUpdateItem); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>