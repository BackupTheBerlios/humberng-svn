<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<jsp:useBean id="uploadForm" scope="request" class="net.humberng.ftc.UploadForm" />
<html:xhtml/>
<html>
<head>
<title><bean:message key="ptc.successtitle"/></title>
</head>

<html>
<body>
<img src="http://black.broadbandcapital.co.uk/tmp/<jsp:getProperty name="uploadForm" property="file"/>" ><br>"
</body>
</html>