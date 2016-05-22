<jsp:useBean  id="bean1" scope="page" class="pl.lukaszmarczak.todolist.counter.Counter" />

<html>
<body>
  <H3>Page Bean Example</H3>
  <b>The current count for the counter bean is: </b>
  <%= bean1.getCounter() %>
   (alternatively:   <jsp:getProperty name="bean1" property="counter" /> )
</body>
</html>