<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<%@ page import="pl.lukaszmarczak.todolist.TodoItem" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.TodoItem" scope="application"/>
<jsp:setProperty name="item" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY>

<% String index = request.getParameter("todo_id"); %>

<% String text = request.getParameter("todo_text"); %>
<% String date = request.getParameter("todo_date"); %>
<% String done = request.getParameter("todo_done"); %>

<% TodoItem toUpdateItem = new TodoItem();%>
<% toUpdateItem.setId(Long.parseLong(index));%>
<% toUpdateItem.setText(text);%>
<% toUpdateItem.setDate(date);%>
<% toUpdateItem.setDone(Boolean.parseBoolean(done));%>
<% TodoDbManager.update(toUpdateItem); %>
<% response.sendRedirect("showAllTodos.jsp"); %>
</BODY>
</HTML>