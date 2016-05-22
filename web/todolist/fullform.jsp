<html>
<head>
<!-- Example5 -->
<title>VisualBuilder.com</title>
</head>
<body>
<h1>
Website submission form
</h1>
<form action="fullformconfirm.jsp" method="post">
Enter in the website name:
<input type="text" name="website">
<br>
<br>
Enter in the url:
<input type="text" name="url">
<br>
<br>
category:
<select name="category" size="1">
<option selected value="java">java</option>
<option value="ejb">ejb</option>
<option value="servlet">servlet</option>
<option value="jsp">jsp</option>
<option value="jdbc">jdbc</option>
</select>
<br>
<br>
Description:
<textarea rows="4" cols='42' name="desc"></textarea>
<br>
<br>
Search engines:
<input type="checkbox" name="yahoo" value="T">Yahoo
<input type="checkbox" name="google" value="T" CHECKED>Google
<input type="checkbox" name="altavista" value="T">Altavista
<br>
<br>
<input type="submit" name="submit" value="Go">
</form>
</body>
</html>
