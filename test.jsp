<?php
    if(isset($_POST['type'])) {
	$type=$_GET['type'];
        switch($_POST['type']) {
            case 1:
			    $t=$_POST['type'];
				$sam=$_POST['sam'];
			
                header("Location: ssgt.jsp?id=$t&sam=$sam");
                break;
            case 2:
                header("Location: tsgt.jsp");
                break;
            case 3:
                header("Location: msgt.jsp");
                break;
        }
    }
?>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>MCQ Questions</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data">
            <p>Select rank :
              <select name="type" id="type" onChange="this.form.submit()">
                <option value="">Select rank...</option>
                <option value="1">SSgt</option>
                <option value="2">TSgt</option>
                <option value="3">MSgt</option>
                </select>
        </p>
            <p>department
              <label>
              <input name="sam" type="text" id="sam">
              </label>
</p>
        </form>
    </body>
</html>