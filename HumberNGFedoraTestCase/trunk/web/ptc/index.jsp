<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>

<html:xhtml/>
<html>
<head>
<title><bean:message key="ftc.uploadtitle"/></title>
<link rel="stylesheet" href="../css/default.css" type="text/css" />
<!--[if gte IE 5.5000]>
<script language="javascript" type="text/javascript" src="/ftc/js/ie_png.js" />
<![endif]-->
</head>
<html>
<body>
<div class="inputBox">
	<html:form action="/UploadFile.do" focus="file" method="post" enctype="multipart/form-data">
	<table cellpadding="0" cellspacing="0">
		<tr>
		    <th width="10" height="26" background="../images/smoothWin_01.png" />
			<th colspan="2" background="../images/smoothWin_02.png"><bean:message key="ftc.uploadtitle"/></th>
			<th width="10" height="26" background="../images/smoothWin_03.png" />
		</tr>
		<tr>
			<td background="../images/smoothWin_04.png"/>
			<td background="../images/smoothWin_05.png"><html:text property="pid" /></td>
			<td background="../images/smoothWin_05.png">PID</td>
			<td background="../images/smoothWin_06.png"/>
		</tr>
		<tr>
			<td background="../images/smoothWin_04.png"/>
			<td background="../images/smoothWin_05.png"><html:text property="label" /></td>
			<td background="../images/smoothWin_05.png">Label</td>
			<td background="../images/smoothWin_06.png"/>
		</tr>
		<tr>
			<td background="../images/smoothWin_04.png"/>
			<td background="../images/smoothWin_05.png"><html:file property="file" /></td>
			<td background="../images/smoothWin_05.png"><html:submit property="Submit" value="submit" /></td>
			<td background="../images/smoothWin_06.png"/>
		</tr>
		<tr>
			<td height="10" background="../images/smoothWin_07.png"/>
			<td colspan="2" height="10" background="../images/smoothWin_08.png"/>
			<td height="10" background="../images/smoothWin_09.png"/>
		</tr>
	</table>
	</html:form>
</div>
</body>
</html>