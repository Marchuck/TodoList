<jsp:useBean id="bean1" scope="request" class="pl.lukaszmarczak.todolist.counter.Counter" />
<html>
<head>
  <title>Request Bean Example</title>
</head>
<body>
<!-- doesn't increment - not a session bean! -->
<%
    bean1.setCounter( bean1.getCounter() +1);
%>


<jsp:forward page="Request.jsp" />
</body>
</html>