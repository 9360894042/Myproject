<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="include/dbconnect.jsp" %>
<%@page import="javapack.Mail"%>
<%
 String regno=request.getParameter("id");
 String regno1=(String)session.getAttribute("regno");
try
{
String a=request.getParameter("btn");
if(a.equals("Pay"))
{
  String ins = " update fees set status='Paid' where id='"+regno+"'";                     
int n = stmt1.executeUpdate(ins);
    if(n==1)
    {
         ResultSet rs0=stmt3.executeQuery("select * from student where regno='"+regno1+"' ");
		int s=0;	
                  rs0.next();
                  
         
                  
                  
                  
                  
     %>
<script language="javascript">
    alert("Payment Success!");
    window.location="user.jsp";
</script>
<%     
    }
    else
    {
%>
<script language="javascript">
    alert("user name/ pass  Wrong!");
    window.location="FarmerLogin.jsp";
</script>
<%
    }
    
}
}catch (Exception e)
{
 //out.print(e);
}
%>

 
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fees Admin</title>
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
.style1 {font-size: 14}
-->
    </style>
</head>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex align-items-center">
         
           <div style="font-style:normal;font-size:24px;color:#FFFFFF">Web Based Fees Management</div>
        
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
              <a href="#" class="nav-link">              </a>            </li>
            <li class="nav-item nav-category">
              <span class="nav-link">Dashboard</span>            </li>
            <li class="nav-item">
              <a class="nav-link" href="user.jsp">
                <span class="menu-title">Home</span>
                <i class="icon-screen-desktop menu-icon"></i>              </a></li>
            
            <li class="nav-item">
              <a class="nav-link" href="view1.jsp">
              <span class="menu-title">View</span></a>            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">
                <span class="menu-title">Logou</span>
                <i class="icon-grid menu-icon"></i>              </a></li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-lg-12 stretch-card grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">&nbsp;</h4>
                    <p class="card-description"> </code>
                    </p>
                    <%
   
               
                   
                  
             
                
                       
  ResultSet rs0=stmt3.executeQuery("select * from fees where id='"+regno+"'");
		int s=0;
                
                   rs0.next();
			
                                %>
					<form action="" method="post" name="form">
                    <table width="50%" border="0" align="left">
                      <tr>
                        <td colspan="3"><span class="style1">Payment Mode.... </span></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td width="64%"><label>
                          <input type="image" name="imageField" src="images/payment.png" />
                        </label></td>
                      </tr>
                      
                      <tr>
                        <td>&nbsp;</td>
                        <td>Semester</td>
                        <td><%out.print(rs0.getString("sem"));%></td>
                      </tr>
                      <tr>
                        <td width="20%">&nbsp;</td>
                        <td width="16%"><span class="style4">Amount</span> </td>
                        <td><%out.print(rs0.getString("fees"));%></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td height="33"><span class="style4">Enter Card Number </span></td>
                        <td><input name="cno" type="text" id="cno" maxlength="16" minlength="16" required /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td height="36"><span class="style4">CVV Number </span></td>
                        <td><input name="cvv" type="password" id="cvv" maxlength="3" minlength="3" required /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style4">Card Name </span></td>
                        <td><input name="cname" type="text" id="cname" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input name="btn" type="submit" value="Pay" /></td>
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