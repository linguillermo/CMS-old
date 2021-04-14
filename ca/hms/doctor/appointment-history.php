<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
if(isset($_GET['cancel']))
		  {
mysqli_query($con,"update appointment set doctorStatus='0' where id ='".$_GET['id']."'");
                  $_SESSION['msg']="Appointment canceled !!";
		  }
?>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Clinica Abeleda | Appointments</title>

	<link href="insp/css/bootstrap.min.css" rel="stylesheet">
	<link href="insp/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">

	<!-- FooTable -->
	<link href="insp/css/plugins/footable/footable.core.css" rel="stylesheet">

	<link href="insp/css/animate.css" rel="stylesheet">
	<link href="insp/css/style.css" rel="stylesheet">

</head>

<body>

	<div id="wrapper">

	<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
					<ul class="nav metismenu" id="side-menu">
							<li class="nav-header">
									<div class="dropdown profile-element">
											<img alt="image" class="rounded-circle" src="insp/img/New Project.png"/>
											<?php $query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
															while($row=mysqli_fetch_array($query))
															{ ?>


                            <span class="block m-t-xs font-bold"><?php echo $row['fullName']; ?></span>
                            <span class="text-muted text-xs block"><?php echo $row['role']; ?></span>


													<?php } ?>
									</div>
									<div class="logo-element">
											CA
									</div>
							</li>
							<li>
									<a href="dashboard.php"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>

							</li>
							<li>
									<a href="manage-patient.php"><i class="fa fa-table"></i> <span class="nav-label">Patient Records</span></a>

							</li>
							<li class="active">
									<a href="appointment-history.php"><i class="fa fa-calendar"></i> <span class="nav-label">Appointments</span>  </a>
							</li>
					</ul>

			</div>
	</nav>

	<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
			<nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
					<form role="search" class="navbar-form-custom" action="search_results.html">
							<div class="form-group">
									<input type="text" placeholder="" class="form-control" name="top-search" id="top-search">
							</div>
					</form>
			</div>
			<ul class="nav navbar-top-links navbar-right">
					<li>
							<span class="m-r-sm text-muted welcome-message">Welcome to Clinica Abeleda</span>
					</li>




					<li>
							<a href="logout.php">
									<i class="fa fa-sign-out"></i> Log out
							</a>
					</li>

			</ul>

			</nav>
			</div>

			<div class="wrapper wrapper-content animated fadeInRight">


					<div class="row">
							<div class="col-lg-12">
									<div class="ibox ">
											<div class="ibox-title">
													<h5>Approved Appointments</h5>

													<div class="ibox-tools">

													</div>
											</div>
											<div class="ibox-content">

													<div class="row">
															<div class="col-sm-9 m-b-xs">
																	<div data-toggle="buttons" class="btn-group btn-group-toggle">
																			<label class="btn btn-sm btn-white"> <input type="radio" id="option1" name="options"> Day </label>
																			<label class="btn btn-sm btn-white active"> <input type="radio" id="option2" name="options"> Week </label>
																			<label class="btn btn-sm btn-white"> <input type="radio" id="option3" name="options"> Month </label>
																	</div>
															</div>
															<div class="col-sm-3">
																	<div class="input-group mb-3">
																			<input type="text" class="form-control form-control-sm m-b-xs" id="filter"
														 placeholder="Search in table">
																			<div class="input-group-append">
																					<button class="btn btn-sm btn-primary" type="button"><i class="fa fa-search"></i></button>
																			</div>
																	</div>
															</div>
													</div>

													<table class="table table-striped" data-page-size="8" data-filter=#filter>
															<thead>
															<tr>

																	<th>#</th>
																	<th>Name </th>
																	<th>Address </th>
																	<th>Phone No</th>
																	<th>Date</th>
																	<th>Time</th>
																	<th>Description</th>
																	<th>Action</th>
															</tr>
															</thead>
															<tbody>

																<?php
$sql=mysqli_query($con,"select users.fullName as fname,appointment.*  from appointment join users on users.id=appointment.userId where appointment.doctorId='".$_SESSION['id']."'");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

															<tr>
																	<td><?php echo $cnt;?></td>
																	<td><?php echo $row['fname'];?></td>
																	<td><?php echo $row['doctorSpecialization'];?></td>
																	<td><?php echo $row['consultancyFees'];?></td>
																	<td><?php echo $row['appointmentDate'];?> / <?php echo
												 $row['appointmentTime'];?></td>
																	<td><?php echo $row['postingDate'];?></td>
																	<td>
																		<?php if(($row['userStatus']==1) && ($row['doctorStatus']==1))
{
echo "Active";
}
if(($row['userStatus']==0) && ($row['doctorStatus']==1))
{
echo "Cancel by Patient";
}

if(($row['userStatus']==1) && ($row['doctorStatus']==0))
{
echo "Cancel by you";
}



											?>
																	</td>
																	<td>
																		<?php if(($row['userStatus']==1) && ($row['doctorStatus']==1))
	{ ?>


		<a href="appointment-history.php?id=<?php echo $row['id']?>&cancel=update" onClick="return confirm('Are you sure you want to cancel this appointment ?')"class="btn btn-transparent btn-xs tooltips" title="Cancel Appointment" tooltip-placement="top" tooltip="Remove">Cancel</a>
		<?php } else {

			echo "Canceled";
			} ?>
		</td>
															</tr>
															<?php
$cnt=$cnt+1;
											 }?>
															</tbody>
													</table>
											</div>
									</div>
							</div>
					</div>
			</div>
			<div class="footer">
					<div>
							<strong>Copyright</strong> Clinica Abeleda &copy; 2020
					</div>
			</div>

			</div>
			</div>



	<!-- Mainly scripts -->
	<script src="insp/js/jquery-3.1.1.min.js"></script>
	<script src="insp/js/popper.min.js"></script>
	<script src="insp/js/bootstrap.js"></script>
	<script src="insp/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="insp/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- FooTable -->
	<script src="insp/js/plugins/footable/footable.all.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="insp/js/inspinia.js"></script>
	<script src="insp/js/plugins/pace/pace.min.js"></script>

	<!-- Page-Level Scripts -->
	<script>
			$(document).ready(function() {

					$('.footable').footable();
					$('.footable2').footable();

			});

	</script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
