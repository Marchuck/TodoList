<html>
<head>
<title>VisualBuilder.com</title>
</head>
<body>

<font size=3>
Thank you for your submission,it has been successfully received:
<br><br>
<%
String sName = request.getParameter("website");
String sUrl = request.getParameter("url");
String sCategory = request.getParameter("category");
String sDesc = request.getParameter("desc");
String sGoogle = request.getParameter("google");
String sYahoo = request.getParameter("yahoo");
String sAltavista = request.getParameter("altavista");
%>

Name:<%=sName%><br>
Url:<%=sUrl%><br>
Desc:<%=sDesc%><br>
Category:<%=sCategory%><br>
Desc:<%=sDesc%><br>
Google:<%=sGoogle%><br>
Yahoo:<%=sYahoo%><br>
Altavista:<%=sAltavista%><br>


</font>

</body>
</html>
