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
<form id="beauty" class="newtodoform" method="post" action="newToDoSave.jsp">
    <ul>
        <li>
            <label class="task" for="text">Task    </label>
            <input id="text" name="todo_text" class="text" type="text" maxlength="255" value=""/>
        </li>
        <li>
            <label class="description" for="date">Deadline</label>
		    <span>
			 <input id="date" name="todo_date" class="date" size="32" type="text" maxlength="32" value=""/>
                <br/>
             <input id="saveForm" class="button_text" type="submit" name="submit" value="Create"/>
            </span>
        </li>
    </ul>
</form>

<div id="footer">
</div>
</div>

</body>
</html>
