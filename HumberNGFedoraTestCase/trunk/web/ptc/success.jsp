<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<jsp:useBean id="uploadForm" scope="request" class="net.humberng.ftc.UploadForm" />
<html:xhtml/>
<html>
<head>
<title><bean:message key="ftc.successtitle"/></title>
<link rel="stylesheet" href="/ftc/css/default.css" type="text/css" />
<!--[if gte IE 5.5000]>
<script language="javascript" type="text/javascript" src="/ftc/js/ie_png.js" />
<![endif]-->
</head>
<html>
<body>
<div class="ContentOutputBox">
	<table cellpadding="0" cellspacing="0">
		<tr>
		    <th width="10" height="26" background="/ftc/images/smoothWin_01.png" />
			<th background="/ftc/images/smoothWin_02.png"><bean:message key="ftc.successtitle"/></th>
			<th width="10" height="26" background="/ftc/images/smoothWin_03.png" />
		</tr>
		<tr>
			<td background="/ftc/images/smoothWin_04.png"/>
			<td background="/ftc/images/smoothWin_05.png"><img src="http://black.broadbandcapital.co.uk/tmp/<jsp:getProperty name="uploadForm" property="file"/>" /></td>
			<td background="/ftc/images/smoothWin_06.png"/>
		</tr>
		<tr>
			<td height="10" background="/ftc/images/smoothWin_07.png"/>
			<td height="10" background="/ftc/images/smoothWin_08.png"/>
			<td height="10" background="/ftc/images/smoothWin_09.png"/>
		</tr>
	</table>
</div>
</body>
</html>