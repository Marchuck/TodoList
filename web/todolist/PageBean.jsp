<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<BODY>
<H1>Using Beans and Page Scope</H1>
<jsp:useBean id="bean1" class="pl.lukaszmarczak.todolist.counter.Counter" scope="page" />
    <%bean1.setCounter(bean1.getCounter() + 1);%>


    The counter value is: <jsp:getProperty name="bean1" property="counter" />
        
<%--  instead try this to differ PageBean from RequestBean:
<jsp:forward page="PageBeanTest.jsp" /> --%>
         
</BODY>
</HTML>