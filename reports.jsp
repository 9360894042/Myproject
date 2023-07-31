<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %> 
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
              <a class="nav-link" href="view.jsp">
                <span class="menu-title">View Details</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
			<li class="nav-item">
              <a class="nav-link" href="feesview.jsp">
                <span class="menu-title">Fees Details</span>
                <i class="icon-grid menu-icon"></i>
              </a></li>
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
                    <h4 class="card-title"> Student Fees Details</h4>
                    <p class="card-description"> </code>                    </p>
                    <p>&nbsp;</p>
                    <form id="form1" name="form1" method="post" action="">
					 <table width="30%" border="0">
                      <tr>
                        <td width="15%" height="31">&nbsp;</td>
                        <td width="27%">Select Date: </td>
                        <td width="18%"><label>
                          <input type="date" name="date">
                        </label></td>
                        <td width="40%"><label>
                          <input name="btn" type="submit" id="btn" value="Submit">
                        </label></td>
                      </tr>
                    </table>
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th><div align="center">Sl.No </div></th>
                          <th> <div align="center">RegNo </div></th>
                          <th> <div align="center">Date</div></th>
                          <th> <div align="center">Fees</div></th>
                          <th> <div align="center">Semester</div></th>
                        </tr>
                      </thead>
                      <tbody>
                           <%
   try 
       {
               
                   String a=request.getParameter("btn");
                    if(a.equals("Submit"))
                    {
                   
               String date=request.getParameter("date");
                
                       
  ResultSet rs0=stmt3.executeQuery("select * from fees where date='"+date+"' and status='Paid' ORDER BY category ASC");
		int s=0;
                
                   while(rs0.next())
			{
                            
                            
                            
                            
                         if(s==0)
                         {
                            %>
				<%
                         }
                           s++;
                                %>
                       
                        <tr class="table-primary">
                           <td height="34"><div align="center"><% out.print(s);%></div></td>
          <td><div align="center"><% out.print(rs0.getString("regno"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("date"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("fees"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("sem"));%> </div></td>
                        </tr>
                        	  <% }
                    }
               }
               catch(Exception ex)
               {
               }
               %> 
                      </tbody>
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