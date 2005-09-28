<?php
	$lines = file("http://dragon3d.berlios.de/ip.txt");
	$ip = $lines[0];
?><html>
<head>
	<title>HuberNG Backend Central</title>
</head>
<body bgcolor="#eeeeee">
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle"><table width="500" height="500" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="12" height="12" background="images/layertrans_01.png"/>    
        <td background="images/layertrans_02.png"/>    
        <td width="12" background="images/layertrans_03.png"/>    
      </tr>
      <tr>
        <td background="images/layertrans_04.png"/>    
        <td background="images/layertrans_05.png">
			<div align="center">
			<img src="images/humberng.png">
			</div>
			<div align="center">
			<a href="http://<?php echo $ip ?>/mediawiki/">Broadband Capital Wiki</a>
			</div>
			<div align="center">
			<a href="http://<?php echo $ip ?>:8080/ftc/">Fedora Test Case</a>
			</div>
			<div align="center">
			<a href="http://<?php echo $ip ?>/svnstats/bc/">Broadband Capital Coding Statistics</a>
			</div>
			<div align="center">
			<a href="http://<?php echo $ip ?>/svnstats/hng/">Humber NG Coding Statistics</a>
			</div>
        </td>    
        <td background="images/layertrans_06.png"/>    
      </tr>
      <tr>
        <td height="12" background="images/layertrans_07.png"/>    
        <td background="images/layertrans_08.png"/>    
        <td background="images/layertrans_09.png"/>    
      </tr>
    </table></td>
  </tr>
</table>
</body>
<html>