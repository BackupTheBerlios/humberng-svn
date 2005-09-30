<jsp:useBean id="hello" class="net.humberng.ftc.GoodbyeWorld" />
<html>
<head>
<title><jsp:getProperty name="hello" property="message" /></title>
<body>
<div align="center">
<jsp:getProperty name="hello" property="message" />
</div>
</body>
</html>