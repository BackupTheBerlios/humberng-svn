<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>

<html:xhtml/>
<html>
<head>
<title><bean:message key="ptc.uploadtitle"/></title>
</head>

<html>
<body>
<html:form action="/UploadFile.do" focus="file" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>Upload picture</td>
		<td><html:file property="file" /></td>
		<td><html:submit property="Submit" value="submit" /></td>
	</tr>
</table>
</html:form>

</body>
</html>