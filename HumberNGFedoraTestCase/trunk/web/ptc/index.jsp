<html>
<body>
<form action="/ftc/uploadPic" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>Upload picture</td>
		<td><input type="file" name="bc_file"></td>
		<td><input type="submit" value="Upload"></td>
	</tr>
</table>
</form>
<form action="/ftc/showPic" method="post" >
<table>
	<tr>
		<td>Show picture</td>
		<td><input type="text" name="bc_pid"></td>
		<td><input type="submit" value="Show"></td>
	</tr>
</table>
</form>
</body>
</html>