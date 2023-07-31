
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
.style12 {font-size: 18px; color: #000000; font-family: "Times New Roman", Times, serif; }
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
              <a class="nav-link" href="feesreports.jsp">
              <span class="menu-title">Fees Reports</span></a>            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">
                <span class="menu-title">Logout</span>
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
                    <h4 class="card-title"> Details</h4>
                    <p class="card-description"> </code>
                    </p>
					<form method="post" action="" name="form1">
					  <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th><div align="center">Sl.No </div></th>
                            <th> <div align="center">Department </div></th>
                            <th> <div align="center">Semester1</div></th>
                            <th> <div align="center">Semester2</div></th>
                            <th> <div align="center">Semester3</div></th>
                            <th> <div align="center">Semester4</div></th>
                            <th><div align="center">Semester5</div></th>
                            <th><div align="center">Semester6</div></th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php
	
				$i=1;
				$qry=mysql_query("select DISTINCT department from feesmaster  ORDER BY department DESC");
				while($row=mysql_fetch_array($qry))
				{
						
		 $dept=$row['department'];
		 $qrt1=mysql_query("select * from feesmaster where department='$dept'");
		$rw=mysql_fetch_array($qrt1);
		
																
				?>
                          <tr class="table-primary">
                            <td height="34"><div align="center"><?php echo $i;?></div></td>
                            <td><div align="center"><?php echo $row['department'];?></div></td>
                            <?php
		  $sem=$rw['sem'];
		  $dep=$rw['department'];
		   $qrt33=mysql_query("select * from feesmaster where department='$dept' and sem='I semester'");
		$rw133=mysql_fetch_array($qrt33);
		  ?>
                            <td><div align="center"><?php echo $rw133['fees'];?></div></td>
                            <?php
		  $qrt11=mysql_query("select * from feesmaster where department='$dept' and sem='II semester'");
		$rw1=mysql_fetch_array($qrt11);
		  ?>
                            <td><div align="center"><?php echo $rw1['fees'];?></div></td>
                            <?php
		  $qrt12=mysql_query("select * from feesmaster where department='$dept' and sem='III semester'");
		$rw2=mysql_fetch_array($qrt12);
		  ?>
                            <td><div align="center"><?php echo $rw2['fees'];?></div></td>
                            <?php
		  $qrt13=mysql_query("select * from feesmaster where department='$dept' and sem='IV semester'");
		$rw3=mysql_fetch_array($qrt13);
		  ?>
                            <td><div align="center"><?php echo $rw3['fees'];?></div></td>
                            <?php
		  $qrt14=mysql_query("select * from feesmaster where department='$dept' and sem='V semester'");
		$rw4=mysql_fetch_array($qrt14);
		  ?>
                            <td><div align="center"><?php echo $rw4['fees'];?></div></td>
                            <?php
		  $qrt15=mysql_query("select * from feesmaster where department='$dept' and sem='VI semester'");
		$rw5=mysql_fetch_array($qrt15);
		  ?>
                            <td><div align="center"><?php echo $rw5['fees'];?></div></td>
                            <?php
				$i++;
				}
				
				?>
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