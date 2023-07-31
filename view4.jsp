<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="include/dbconnect.jsp" %>
<%
       String regno=(String)session.getAttribute("regno");               
  ResultSet rs0=stmt3.executeQuery("select * from tc where rno='"+regno+"'");
		int s=0;
                
                   rs0.next();

%>
<!DOCTYPE html>
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
<script type="text/javascript">
var doc = new jsPDF();
var specialElementHandlers = {
'#editor': function (element, renderer) {
return true;
}
};

$(document).ready(function() {
$('#btn').click(function () {
doc.fromHTML($('#content').html(), 15, 15, {
'width': 1200,
'elementHandlers': specialElementHandlers
});
doc.save('sample-content.pdf');
});
});
</script>
<style type="text/css">
<!--
.style12 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>
<body onLoad="window.print()">
<div id="content">
  <form method="post" action="" name="form1">
					  <table width="63%" border="0" align="center">
                        <tr>
                          <td width="2%" height="54">&nbsp;</td>
                          <td colspan="5"><div align="center" class="style13">
                              <p>Transfer Certificate-Department Of College Education</p>
                          </div></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td colspan="2"><strong>Sl.No:<% out.print(rs0.getString("id"));%><?php echo $row['id'];?></strong></td>
                          <td width="3%">&nbsp;</td>
                          <td colspan="2"><strong>Admission No:<% out.print(rs0.getString("ano"));%> <?php echo $row[''];?></strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td width="3%">1.</td>
                          <td width="48%"><strong>Name Of the College </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td colspan="2">Hindustan College </td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><strong>Name of the District </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td colspan="2">Coimbatore</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>2.</td>
                          <td><strong>Name of the Student </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td colspan="2"><strong><% out.print(rs0.getString("name"));%><?php echo $row['name'];?></strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>3.</td>
                          <td><strong>Name of the Father/Mother </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td colspan="2"><strong><% out.print(rs0.getString("fname"));%><?php echo $row['fname'];?></strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>4.</td>
                          <td><strong>Nationality</strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td colspan="2"><strong><% out.print(rs0.getString("nationality"));%><?php echo $row['nationality'];?></strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>5.</td>
                          <td><strong>Religion</strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td width="19%"><strong><% out.print(rs0.getString("religion"));%><?php echo $row['religion'];?></strong></td>
                          <td width="25%"><strong>Caste:<% out.print(rs0.getString("caste"));%><?php echo $row['caste'];?></strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>6.</td>
                          <td><strong>Community</strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("community"));%><?php echo $row['community'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>7.</td>
                          <td><strong>Sex</strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("gender"));%><?php echo $row['gender'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>8.</td>
                          <td><strong>Blood Group </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("bgroup"));%><?php echo $row['bgroup'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>9.</td>
                          <td><strong>Date of Brith </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("dob"));%><?php echo $row['dob'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>10.</td>
                          <td><strong>Place of Brith </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("pbrith"));%><?php echo $row['pbrith'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>11.</td>
                          <td><strong>Aadhar No </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("aano"));%><?php echo $row['aano'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>12.</td>
                          <td><strong>Date of Admission and Class Admitted </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("doa"));%><?php echo $row['doa'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>13.</td>
                          <td><p><strong>Class in which the pupil was studying at the time of Leaving </strong></p></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("tol"));%><?php echo $row['tol'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>14.</td>
                          <td><strong>The Course offered Main </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("com"));%><?php echo $row['com'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>15.</td>
                          <td><strong>Language Offered under part </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("lo"));%><?php echo $row['lo'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>16.</td>
                          <td><strong>Medium of Instruction </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("moi"));%><?php echo $row['moi'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>17.</td>
                          <td><strong>The Student paid all  fees </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("fees"));%><?php echo $row['fees'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>18.</td>
                          <td><strong>Scholarship</strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("s"));%><?php echo $row['s'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><strong>Scholarship Name </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("sn"));%><?php echo $row['sn'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>19.</td>
                          <td><strong>Student Medical inspection during the Year </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("mi"));%><?php echo $row['mi'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>20</td>
                          <td><strong>Date on Student left the College </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("dolc"));%><?php echo $row['dolc'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>21</td>
                          <td><strong>The Student's conduct and Character </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("scc"));%><?php echo $row['scc'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>22.</td>
                          <td><strong>Date on TC was made on </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("dotc"));%><?php echo $row['dotc'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>23.</td>
                          <td><strong>Issued Date </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("tci"));%><?php echo $row['tci'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>24.</td>
                          <td><strong>Course of Study </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("course"));%><?php echo $row['course'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>25.</td>
                          <td><strong>Academic Year </strong></td>
                          <td><div align="center"><strong>:</strong></div></td>
                          <td><strong><% out.print(rs0.getString("ay"));%><?php echo $row['ay'];?></strong></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="29">&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="60">&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><strong>Signature of Principal </strong></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><strong>Signature of Student </strong></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><label>
                                  
                            </label>
                          </td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                      </table>
					</form>
</div>


</body>
</html>