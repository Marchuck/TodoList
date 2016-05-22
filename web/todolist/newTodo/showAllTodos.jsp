<%@ page import="pl.lukaszmarczak.todolist.TodoDbManager" %>
<%@ page import="pl.lukaszmarczak.todolist.TodoItem" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.TodoItem" scope="session"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 19.05.2016
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="beauty.css">
    <title>Create new task</title></head>
<body>

<div id="footer">

    <A HREF="newToDoForm.jsp">Add new</A><br/><br/>
    <%
        List<TodoItem> items = TodoDbManager.getToDoItems();
        for (TodoItem item1 : items) { %>
    <div id="beauty">
        <%=TodoDbManager.drawStrikeStart(item1)%>
        <%="todo: " + item1.getText() + "\t\t deadline:" + item1.getDate() %>
        <%=TodoDbManager.drawStrikeEnd(item1)%>
        <br/>
        <form id="delete_todo_form" class="delete_todo_class" method="post" action="delete_todo.jsp">
            <input id="delete" name="todo_id" class="date" size="32" type="hidden" value="<%=item1.getId() %>"/>
            <input id="delete_todo" class="button_text" type="submit" name="submit" value="delete"/>
        </form>
        <form id="edit_todo_form" class="delete_todo_class" method="post" action="edit_todo.jsp">
            <input id="edit" name="todo_id" class="date" size="32" type="hidden" value="<%=item1.getId() %>"/>
            <input id="edit_todo" class="button_text" type="submit" name="submit" value="edit"/>
        </form>
    </div>

    <% }%>

</div>

</body>
</html>
