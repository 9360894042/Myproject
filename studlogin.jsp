
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="include/dbconnect.jsp" %>
<%
try
{
String a=request.getParameter("btn");
if(a.equals("Login"))
{
    String name=request.getParameter("uname");
    String pass=request.getParameter("password");
    out.print(name+""+pass);
    session.setAttribute("regno",name);
    String qry="select * from student where regno='"+name+"' && dob='"+pass+"'";
    out.print(qry);
    ResultSet rs=stmt1.executeQuery(qry);
    if(rs.next())
    {
        response.sendRedirect("user.jsp");
    }
    else
    {
%>
<script language="javascript">
    alert("user name/ pass  Wrong!");
    window.location="studlogin.jsp";
</script>
<%
    }
    rs.close();
}
}
catch (Exception e)
{
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
    <link rel="stylesheet" href=" css/style.css" <!-- End layout styles -->
    <link rel="shortcut icon" href=" images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src=" images/logo.svg">
                </div>
                <h4>Login  let's get started</h4>
                <h6 class="font-weight-light">Sign in to continue.</h6>
                <form  action="" method="post" name="foem1">
                  <div class="form-group">
                    <input type="text" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username" name="uname" required>
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password" name="password" required>
                  </div>
                  <div class="mt-3">
                   
					<br>
                    
                    <label>
                    
                        <button type="submit" class="btn btn-primary btn-lg btn-block" name="btn" value="Login">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-user"></i>&nbsp;Signin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </button>
                    </label>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                    </div>
                   
                  </div>
                  
                  <div class="text-center mt-4 font-weight-light"></div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src=" vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src=" js/off-canvas.js"></script>
    <script src=" js/misc.js"></script>
    <!-- endinject -->
  </body>
</html>