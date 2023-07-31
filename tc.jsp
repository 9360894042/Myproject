
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 try
{
 String a=request.getParameter("btn");
if(a.equals("Submit"))
{
 String ano=request.getParameter("ano");
String rno=request.getParameter("rno");
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String nationality=request.getParameter("nationality");
String religion=request.getParameter("religion");
String caste=request.getParameter("caste");
String community=request.getParameter("community");
String gender=request.getParameter("gender");
String bgroup=request.getParameter("bgroup");
String dob=request.getParameter("dob");
String pbrith=request.getParameter("pbrith");
String aano=request.getParameter("aano");
String doa=request.getParameter("doa");
String tol=request.getParameter("tol");
String com=request.getParameter("com");
String lo=request.getParameter("lo");
String fees=request.getParameter("fees");
String s=request.getParameter("s");
String mi=request.getParameter("mi");
String dolc=request.getParameter("dolc");
String scc=request.getParameter("scc");
String dotc=request.getParameter("dotc");
String tci=request.getParameter("tci");
String course=request.getParameter("course");
String ay=request.getParameter("ay");
String moi=request.getParameter("moi");
String sn=request.getParameter("sn");

 
   String qry = "select max(id) as maxid from student";
            ResultSet rs = stmt.executeQuery(qry); 
            int id1 = 0;
            if (rs.next()) 
            {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
            
            String ins = "insert into tc values('"+id2+"','"+ano+"','"+rno+"','"+name+"','"+fname+"','"+nationality+"','"+religion+"','"+caste+"','"+community+"','"+gender+"','"+bgroup+"','"+dob+"','"+pbrith+"','"+aano+"','"+doa+"','"+tol+"','"+com+"','"+lo+"','"+moi+"','"+fees+"','"+s+"','"+sn+"','"+mi+"','"+dolc+"','"+scc+"','"+dotc+"','"+tci+"','"+course+"','"+ay+"')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("register Success\n");
                window.location.href = "tc.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "tc.jsp";
		</script>
						
<%
  
   }
		
 
    
}


}catch (Exception e)
{
 //out.println(e);
}




%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Stellar Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css" <!-- End layout styles -->
    <link rel="shortcut icon" href="images/favicon.png" />
    <style type="text/css">
<!--
.button21 {width:75px;
height:30px;
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px;
    text-align: center;
    
    display: inline-block;
    font-size: 12px;
}
.button21 {border-radius: 4px;}
.button21 {background-color: #008CBA;}
.style8 {color: #000000}
.style7 {	color: #000000;
	font-weight: bold;
}
-->
    </style>
</head>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex align-items-center">
         
           <div style="font-style:normal;font-size:24px;color:#FFFFFF">Fees collection and transfer certificate:</div>
        
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex">Welcome Student Details!</h5>
          
           
            
         
           
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
               
                
                
              </a>
            </li>
            <li class="nav-item nav-category">
              <span class="nav-link">Dashboard</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="admin.jsp">
                <span class="menu-title">Admin Home</span>
                <i class="icon-screen-desktop menu-icon"></i>
              </a>
            </li>
			<li class="nav-item">
              <a class="nav-link" href="feesmaster.jsp">
                <span class="menu-title">Fees Master</span>
                <i class="icon-screen-desktop menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="addstudent.jsp" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Add Student</span>
                <i class="icon-layers menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="fees.jsp">
                <span class="menu-title">Add Fees</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tc.jsp">
                <span class="menu-title">Add Tc</span>
                <i class="icon-book-open menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view.jsp">
                <span class="menu-title">View Details</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
			<li class="nav-item">
              <a class="nav-link" href="feesview.jsp">
                <span class="menu-title">Fees Details</span>
                <i class="icon-grid menu-icon"></i>
              </a>
			  </li>
			   <li class="nav-item">
              <a class="nav-link" href="reports.jsp">
                <span class="menu-title">Report</span>
                <i class="icon-grid menu-icon"></i>
              </a></li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">
                <span class="menu-title">Logout</span>
                <i class="icon-grid menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item pro-upgrade">
              <span class="nav-link">
                <a class="btn btn-block px-0 btn-rounded btn-upgrade" href="https://www.bootstrapdash.com/product/stellar-admin-template/" target="_blank"> <i class="icon-badge mx-2"></i> Upgrade to Pro</a>
              </span>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-lg-12 stretch-card grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title"><span class="style7">Student Tranfer CertificateDetails </span></h4>
                    <p class="card-description"> </code>
                    </p>
					<form action=" " method="post" name="form1">
                    <table width="95%" border="0" align="center">
                      <tr>
                        <td width="22%" height="36"><span class="style8">Admission.No</span></td>
                        <td width="1%">:</td>
                        <td width="12%"><label>
                          <input name="ano" type="text" id="ano" class="form-control" required/>
                        </label></td>
                        <td width="4%">&nbsp;</td>
                        <td width="20%"><span class="style8">Course offered Main </span></td>
                        <td width="1%">:</td>
                        <td width="36%"><input name="com" type="text" id="com" class="form-control" required/></td>
                        <td width="4%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="32"><span class="style8">Reg.No</span></td>
                        <td>:</td>
                        <td><input name="rno" type="text" id="rno" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">language Offered </span></td>
                        <td>:</td>
                        <td><label>
                          <select name="lo" id="lo" class="form-control" required>
                            <option value="--Select--">--Select--</option>
                            <option value="Tamil">Tamil</option>
                            <option value="Hindi">Hindi</option>
                            <option value="English">English</option>
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="32"><span class="style8">Student Name:</span></td>
                        <td>:</td>
                        <td><input name="name" type="text" id="name" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Medium Of instruction </span></td>
                        <td>:</td>
                        <td><input name="moi" type="text" id="moi" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="34"><span class="style8">Name Of Father/Mother </span></td>
                        <td>:</td>
                        <td><input name="fname" type="text" id="fname" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Student Paid All Fees </span></td>
                        <td>:</td>
                        <td><label>
                          <select name="fees" id="fees" class="form-control" required>
                            <option value="--Select--">--Select--</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="35"><span class="style8">Nationality</span></td>
                        <td>:</td>
                        <td><input name="nationality" type="text" id="nationality" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Any Scholarship </span></td>
                        <td>:</td>
                        <td><select name="s" id="s" class="form-control">
                            <option value="--Select--">--Select--</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><span class="style8">Religion</span></td>
                        <td>:</td>
                        <td><input name="religion" type="text" id="religion" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Scholarship Name </span></td>
                        <td>:</td>
                        <td><label>
                          <input name="sn" type="text" id="sn" class="form-control" required/>
                        </label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Caste </span></td>
                        <td>:</td>
                        <td><input name="caste" type="text" id="caste" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Medical Inspection </span></td>
                        <td>:</td>
                        <td><select name="mi" id="mi" class="form-control">
                            <option value="--Select--">--Select--</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Community</span></td>
                        <td>:</td>
                        <td><input name="community" type="text" id="community" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Date Of Left College </span></td>
                        <td>:</td>
                        <td><input name="dolc" type="date" id="dolc" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Sex</span></td>
                        <td>:</td>
                        <td><label>
                          <select name="gender" id="gender" class="form-control">
                            <option value="--Select Gender--">--Select Gender--</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Student Conduct Of Character </span></td>
                        <td>:</td>
                        <td><input name="scc" type="text" id="scc" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Blood Group </span></td>
                        <td>:</td>
                        <td><input name="bgroup" type="text" id="bgroup" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Date Of TC Made On </span></td>
                        <td>:</td>
                        <td><input name="dotc" type="date" id="dotc" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Dob</span></td>
                        <td>:</td>
                        <td><input name="dob" type="date" id="dob" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">TC Issued </span></td>
                        <td>:</td>
                        <td><input name="tci" type="date" id="tci" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Place Of Brith State </span></td>
                        <td>:</td>
                        <td><input name="pbrith" type="text" id="pbrith" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Course</span></td>
                        <td>:</td>
                        <td><input name="course" type="text" id="course" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Aadhar No </span></td>
                        <td>:</td>
                        <td><input name="aano" type="text" id="aano" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td><span class="style8">Academic year </span></td>
                        <td>:</td>
                        <td><input name="ay" type="text" id="ay" class="form-control" required/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Date Of Addmission </span></td>
                        <td>:</td>
                        <td><input name="doa" type="date" id="doa" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51"><span class="style8">Time Of Leaving </span></td>
                        <td>:</td>
                        <td><input name="tol" type="text" id="tol" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input name="btn" type="submit" class="btn btn-primary mr-2" id="btn" value="Submit" />
                        </label></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input name="Submit2" type="reset" class="btn btn-light" value="Reset" />
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51">&nbsp;</td>
                        <td>&nbsp;</td>
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
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../js/off-canvas.js"></script>
    <script src="../../js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <!-- End custom js for this page -->
  </body>
</html>