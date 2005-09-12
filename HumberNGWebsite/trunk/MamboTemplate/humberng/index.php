<?php
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
$iso = split( '=', _ISO );
echo '<?xml version="1.0" encoding="'. $iso[1] .'"?' .'>';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
<!--[if gte IE 5.5000]>
<script language="JavaScript">
function correctPNG() // correctly handle PNG transparency in Win IE 5.5 or higher.
{
for(var i=0; i<document.images.length; i++)
{
var img = document.images[i]
var imgName = img.src.toUpperCase()
if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
{
var imgID = (img.id) ? "id='" + img.id + "' " : ""
var imgClass = (img.className) ? "class='" + img.className + "' " : ""
var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "
var imgStyle = "display:inline-block;" + img.style.cssText
var imgAttribs = img.attributes;
for (var j=0; j<imgAttribs.length; j++)
{
var imgAttrib = imgAttribs[j];
if (imgAttrib.nodeName == "align")
{
if (imgAttrib.nodeValue == "left") imgStyle = "float:left;" + imgStyle
if (imgAttrib.nodeValue == "right") imgStyle = "float:right;" + imgStyle
break
}
}
var strNewHTML = "<span " + imgID + imgClass + imgTitle
strNewHTML += " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"
strNewHTML += "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
strNewHTML += "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>"
img.outerHTML = strNewHTML
i = i-1
}
}
}
window.attachEvent("onload", correctPNG);
</script>
<![endif]-->   
    <?php if ( $my->id ) initEditor(); ?>
    <meta http-equiv="Content-Type" content="text/html; <?php echo _ISO; ?>" />
    <?php mosShowHead(); ?>
    <link rel="stylesheet" type="text/css" href="<?php echo $GLOBALS['mosConfig_live_site']; ?>/templates/humberng/css/default.css" />
  </head>
<body>
<div class="header"><img src="images/humberng.png" border="0" alt="Humber NG Project" /></div>
<div class="navigation">
<?php mosLoadModules ( 'top' ); ?>
</div>
<?php
/*
 * Main Content
 */
?>
<div class="body" style="padding:20px 20px 20px 20px;">
	<table cellpadding="3" cellspacing="0" border="0" style="width:70%;">
		<tr>
			<td>
				<?php mosMainBody(); ?>
			</td>
		</tr>
	</table>
</div>
<?php
/*
 * Footer
 */
?>
<div class="footer">
	<table cellpadding="0" cellspacing="0" border="0" style="width:100%;">
		<tr>
			<td style="padding-left:10px;">&copy;2005 Broadband Capital Ltd.</td>
		</tr>
	</table>
</div>
<img style="position:absolute; top:0px; right:15px;" src="images/iconhumberng.png" width="200" height="111" alt="icon" border="0" />
</body>
</html>