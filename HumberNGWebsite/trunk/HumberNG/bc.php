<html>
<body bgcolor="#eeeeee">
<div align="center">
<img src="images/humberng.png">
<?php
$lines = file("http://dragon3d.berlios.de/ip.txt");
$ip = $lines[0];
?>
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
</body>
<html>
