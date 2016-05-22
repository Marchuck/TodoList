<%@ page import="pl.lukaszmarczak.todolist.A" %>
<%@ page import="pl.lukaszmarczak.todolist.HibernateManager" %>
<%@ page %>
<jsp:useBean id="item" class="pl.lukaszmarczak.todolist.A" scope="session"/>
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
<% String index = request.getParameter("todo_id"); %>
<% A it = HibernateManager.getItem(index); %>

<form id="beauty" class="newtodoform" method="post" action="edit_todo_redirect.jsp">
    <ul>
        <li>
            <label class="task" for="text">Task</label>
            <input id="text" name="todo_text" class="text" type="text" maxlength="255" value="<%=it.getText()%>"/>
        </li>
        <li>
            <label class="description" for="date">Deadline </label>
		    <span>
			 <input id="date" name="todo_date" class="date" size="32" type="text" maxlength="32"
                    value="<%=it.getDate()%>"/>
             <input id="edit_id" class="button_text" type="hidden" name="todo_id" value="<%=it.getId()%>"/>
            </span>
        </li>
        <li><label class="isdone" for="checkbox_id">Done</label>
            <input id="checkbox_id" type="checkbox" name="todo_done" value="true"><br>
        </li>
        <li>
            <input id="edit" class="button_text" type="submit" name="submit" value="Finish editing"/>
        </li>
    </ul>
</form>

<div id="footer">
</div>
</div>

</body>
</html>
