<?php
include("dbconnect.jsp");
session_start();
extract($_POST);
$id=$_REQUEST['id'];
$qrt=mysql_query("select * from fees where id='$id'");
$row=mysql_fetch_array($qrt);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="40%" border="0" align="center">
  <tr>
    <td width="7%">&nbsp;</td>
    <td colspan="5"><div align="center" class="style1">Fees Collection </div></td>
    <td width="7%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="15%">&nbsp;</td>
    <td width="3%">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td width="25%">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Bill No </td>
    <td>:</td>
    <td colspan="2"><?php 
	$n=rand('258','369');
	echo 'B00'.$n;
	?>
	
	&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Date</td>
    <td>:</td>
    <td colspan="2"><?php echo date('d-m-Y');?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>1</td>
    <td width="21%">Register No: </td>
    <td width="22%"><?php echo $row['regno'];?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>2</td>
    <td>Fees Details: </td>
    <td><?php echo $row['sem'];?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>3</td>
    <td>Fees:</td>
    <td><?php echo $row['fees'];?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2"><div align="right">Total Amount: </div></td>
    <td><?php echo $row['fees'];?></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
