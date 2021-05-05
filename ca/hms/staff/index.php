<?php
session_start();
error_reporting(0);
require "include/aes256.php";
include("include/config.php");
if(isset($_POST['submit']))
{
	// $hashed_pass = mysqli_query($con, "SELECT password from users");
	// $password_unhash = $_POST['password'];
	// $passVerify = password_verify($password_unhash, $hashed_pass);

	// $user_pass = $_POST['password'];
	// $hashed_pass = $row['password'];
	// $pass_fin = password_verify($user_pass, $hashed_pass);
// decryptthis($row['PatientName'], key)
$ret=mysqli_query($con,"SELECT * FROM users WHERE username='".$_POST['username']."' and password = '".md5($_POST['password'])."' and role='staff'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$extra="dashboard.php";//
$_SESSION['login']=$_POST['username'];
$_SESSION['id']=$num['id'];
$host=$_SERVER['HTTP_HOST'];

$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');

header("location:http://$host$uri/$extra");
exit();
}
else
{
$_SESSION['errmsg']="Invalid username or password";
$extra="index.php";
$host  = $_SERVER['HTTP_HOST'];
$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
}
//$password_unhash = $_POST['password'];
//$passVeriyfy = password_verify($password_unhash, $users['password']);
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Staff Login</title>

		<link href="insp/css/bootstrap.min.css" rel="stylesheet">
    <link href="insp/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="insp/css/animate.css" rel="stylesheet">
    <link href="insp/css/style.css" rel="stylesheet">

	</head>
	<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h2 class="logo-name" style="text-align: center;">Clinica Abeleda</h2>

            </div>
            <h3>Welcome to Clinica Abeleda</h3>

            <p>Please enter your user credentials<br>
						<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
					</p>



            <form class="form-login m-t" role="form" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" required="" name="username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="" name="password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b" name="submit">Login</button>

                <a href="forgot-password.php"><small>Forgot password?</small></a>
                <!-- <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a> -->
            </form>

        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>

	</body>
	<!-- end: BODY -->
</html>
