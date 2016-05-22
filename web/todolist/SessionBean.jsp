<HTML>
<BODY>
  <jsp:useBean id="bean1" class="pl.lukaszmarczak.todolist.counter.Counter" scope="session" />
  <%bean1.setCounter(bean1.getCounter() + 1);%>
  The counter value is:
  <jsp:getProperty name="bean1" property="counter" />
</BODY>
</HTML>