<jsp:useBean id="bean1" scope="application" class="pl.lukaszmarczak.todolist.counter.Counter" />

<html>
<body>
<%
    bean1.setCounter(bean1.getCounter() +1);
%>

<%-- Call this JSP page in Mozilla, IE, Chrome ... etc. --%>
<center>
    
    <b>The current count for the counter bean is: </b> <%= bean1.getCounter() %>
</center>
</body>
</html>