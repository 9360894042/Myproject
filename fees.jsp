
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 try
{
 String a=request.getParameter("btn");
if(a.equals("Submit"))
{
 String regno=request.getParameter("regno");
String category=request.getParameter("category");
String fees=request.getParameter("fees");
String date=request.getParameter("date");
String select=request.getParameter("select");
String sem=request.getParameter("sem");



 
   String qry = "select max(id) as maxid from fees";
            ResultSet rs = stmt1.executeQuery(qry); 
            int id1 = 0;
            if (rs.next()) 
            {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
            
            String ins = "insert into fees values('"+id2+"','"+regno+"','"+category+"','"+fees+"','"+date+"','"+select+"','"+sem+"')";                     
            int n = stmt.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("register Success\n");
                window.location.href = "fees.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "fees.jsp";
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
-->
    </style>
	<script type="text/javascript">
function stm()
{
var x = document.getElementById('category').value;
var y = document.getElementById('sem').value;
self.location='fees.jsp?id=' + x + '&sam='+y;
}
function reload(form1)
{
var x = document.getElementById('deg').value;
self.location='payment.jsp?cat=' + x ;
}
</script>
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
                    <h4 class="card-title">Add  Student Fees Details</h4>
                    <p class="card-description"> </code>
                    </p>
                    <form action="" method="post" name="form1" >
					<table width="50%" border="0">
                      <tr>
                        <td width="7%" height="36">&nbsp;</td>
                        <td width="13%">&nbsp;</td>
                        <td width="33%">&nbsp;</td>
                        <td width="7%">&nbsp;</td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="32">&nbsp;</td>
                        <td>Category</td>
                        <td>
						 
						
						 
						<input name="category" type="text" id="category" class="form-control" />
						 
						
						</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="34">&nbsp;</td>
                        <td>Sem</td>
                        <td><label>
                          <select name="sem" id="sem" required ">
						  
						
						<option value="I semester">I semester</option>
                            <option value="II semester">II semester</option>
                            <option value="III semester">III semester</option>
                            <option value="IV semester">IV semester</option>
						
                           
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="34">&nbsp;</td>
                        <td>Fees</td>
                        <td><label>
						
                          <input name="fees" type="text" id="fees" class="form-control" required/>
						 
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="35">&nbsp;</td>
                        <td>Reg.No</td>
                        <td><label>
                          <input name="regno" type="text" id="regno" class="form-control" required/>
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="35">&nbsp;</td>
                        <td>Date</td>
                        <td><input name="date" type="date" id="date" class="form-control" required/></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>Type</td>
                        <td><label>
                          <select name="select" class="form-control" required>
                            <option value="--Select--">--Select--</option>
                            <option value="Paid">Paid</option>
                            <option value="Pending">Pending</option>
                          </select>
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="51">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input name="btn" type="submit" class="btn btn-primary mr-2" id="btn" value="Submit" />
                          <input name="Submit2" type="reset" class="btn btn-light" value="Reset" />
                        </label></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
					
					</form>
					<script>
function change_brand()
{
	var sem = $("#sem").val();
	var category = $("#category").val();
	
	   $.ajax({
		type: "POST",
		url: "fees.jsp",
		data: "sem="+sem,
		
		cache: false,
		success: function(response)
			{
					//alert(response);return false;
				$("#model").html(response);
			}
			});
	
}
</script>
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