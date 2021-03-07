<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
if(isset($_POST['submit']))
  {

    $vid=$_GET['viewid'];
    $bp=$_POST['bp'];
    $bs=$_POST['bs'];
    $weight=$_POST['weight'];
    $temp=$_POST['temp'];
   $pres=$_POST['pres'];


      $query.=mysqli_query($con, "insert   tblmedicalhistory(PatientID,BloodPressure,BloodSugar,Weight,Temperature,MedicalPres)value('$vid','$bp','$bs','$weight','$temp','$pres')");
    if ($query) {
    echo '<script>alert("Medicle history has been added.")</script>';
    echo "<script>window.location.href ='manage-patient.php'</script>";
  }
  else
    {
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }


}

?>


<?php
if(isset($_POST['save']))
{
	$eid=$_GET['viewid'];
	$patname=$_POST['patname'];
$patcontact=$_POST['patcontact'];
$pataddress=$_POST['pataddress'];
$patage=$_POST['patage'];
$sql=mysqli_query($con,"update tblpatient set PatientName='$patname',PatientContno='$patcontact',PatientAdd='$pataddress',PatientAge='$patage' where ID='$eid'");
if($sql)
{
/* echo "<script>alert('Patient info updated Successfully');</script>"; */


}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Clinica Abeleda | Patient Records</title>

  <link href="insp/css/bootstrap.min.css" rel="stylesheet">
  <link href="insp/font-awesome/css/font-awesome.css" rel="stylesheet">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">

  <!-- FooTable -->
  <link href="insp/css/plugins/footable/footable.core.css" rel="stylesheet">

  <!-- Sweet Alert -->
    <link href="insp/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

  <link href="insp/css/animate.css" rel="stylesheet">
  <link href="insp/css/style.css" rel="stylesheet">
  <link href="insp/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

</head>

<body>

  <div id="wrapper">

  <nav class="navbar-default navbar-static-side" role="navigation">
      <div class="sidebar-collapse">
          <ul class="nav metismenu" id="side-menu">
              <li class="nav-header">
                  <div class="dropdown profile-element">
                      <img alt="image" class="rounded-circle" src="insp/img/New Project.png"/>
                      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          <span class="block m-t-xs font-bold">Rochelle Abeleda</span>
                          <span class="text-muted text-xs block">Doctor <b class="caret"></b></span>
                      </a>
                      <ul class="dropdown-menu animated fadeInRight m-t-xs">
                          <li><a class="dropdown-item" href="profile.html">Profile</a></li>
                          <li><a class="dropdown-item" href="contacts.html">Contacts</a></li>
                          <li><a class="dropdown-item" href="mailbox.html">Mailbox</a></li>
                          <li class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="login.html">Logout</a></li>
                      </ul>
                  </div>
                  <div class="logo-element">
                      CA
                  </div>
              </li>
              <li>
                  <a href="dashboard.php"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>

              </li>
              <li class="active">
                  <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Patients</span><span class="fa arrow"></span></a>
                  <ul class="nav nav-second-level collapse">
                      <li class="active"><a href="manage-patient.php">Patient Records</a></li>
                      <li><a href="doctor-treatment-records.html">Treatment Records</a></li>
                      <li><a href="doctor-prescription-records.html">Prescription Records</a></li>

                  </ul>
              </li>
              <li>
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
              <a href="login.html">
                  <i class="fa fa-sign-out"></i> Log out
              </a>
          </li>

      </ul>

      </nav>
      </div>

      <div class="wrapper wrapper-content animated fadeInRight">

        <?php
                             $vid=$_GET['viewid'];
                             $ret=mysqli_query($con,"select * from tblpatient where ID='$vid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
                             ?>

          <div class="ibox">
              <div class="ibox-content">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="m-b-md">
                              <a href="#" class="btn btn-white btn-xs float-right" data-toggle="modal" data-target="#myModal5">Edit Patient Profile</a>
                              <h2><?php  echo $row['PatientName'];?></h2>
                          </div>

                      </div>
                  </div>









                  <div class="row">
                      <div class="col-lg-6">
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"><dt>Gender:</dt> </div>
                              <div class="col-sm-8 text-sm-left"><dd class="mb-1"><?php  echo $row['PatientGender'];?></dd></div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"><dt>Address:</dt> </div>
                              <div class="col-sm-8 text-sm-left"><dd class="mb-1"><?php  echo $row['PatientAdd'];?></dd> </div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"><dt>Phone No:</dt> </div>
                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"><?php  echo $row['PatientContno'];?></dd></div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"><dt>Occupation:</dt> </div>
                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1">Student</dd></div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"><dt>Date of Birth:</dt> </div>
                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1">July 14, 1995</dd></div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"> <dt>Age:</dt></div>
                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"> 	<?php  echo $row['PatientAge'];?> y/o </dd></div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right"> <dt>Weight:</dt></div>
                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"> 	62 kg </dd></div>
                          </dl>


                      </div>
                      <div class="col-lg-6" id="cluster_info">

                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right">
                                  <dt>Last Appointment:</dt>
                              </div>
                              <div class="col-sm-8 text-sm-left">
                                  <dd class="mb-1">December 18, 2020 8:00 AM</dd>
                              </div>
                          </dl>
                          <dl class="row mb-0">
                              <div class="col-sm-4 text-sm-right">
                                  <dt>Created:</dt>
                              </div>
                              <div class="col-sm-8 text-sm-left">
                                  <dd class="mb-1"> <?php  echo $row['CreationDate'];?></dd>
                              </div>
                          </dl>

                      </div>
                  </div>


              </div>

              <?php }?>
          </div>





          <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog"  aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title">New Patient Form</h4>

                                </div>
                                <div class="modal-body">

                                        <form method="post" role="form" name="">
                                          <?php
                                           $eid=$_GET['viewid'];
                                          $ret=mysqli_query($con,"select * from tblpatient where ID='$eid'");
                                          $cnt=1;
                                          while ($row=mysqli_fetch_array($ret)) {

                                          ?>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Patient Name</label>

                                                <div class="col-sm-10">
                                                    <div class="row">
                                                        <div class="col-md-4"><input type="text" name="patname" value="<?php  echo $row['PatientName'];?>" class="form-control"></div>
                                                        <div class="col-md-4"><input type="text" placeholder="Middle Name" class="form-control"></div>
                                                        <div class="col-md-4"><input type="text" placeholder="Last Name" class="form-control"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Address</label>
                                                <div class="col-sm-10"><input type="text" name="pataddress" class="form-control" value="<?php  echo $row['PatientAdd'];?>">
                                                </div>
                                            </div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Phone No.</label>

                                                <div class="col-sm-10">
                                                    <div class="input-group m-b">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-addon">+63</span>
                                                        </div>
                                                        <input type="text" name="patcontact" class="form-control"  value="<?php  echo $row['PatientContno'];?>">
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="form-group row" id="data_1"><label class="col-sm-2 col-form-label">Date of Birth</label>

                                                <div class="col-sm-5"><div class="input-group date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="mm/dd/yyyy">
                                                </div></div>

                                                <label class="col-sm col-form-label">Age</label>
                                                <div class="col-sm-4"><input type="text" name="patage" class="form-control"  value="<?php  echo $row['PatientAge'];?>">
                                                </div>

                                            </div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Occupation</label>
                                                <div class="col-sm-10"><input type="text" class="form-control">
                                                </div>
                                            </div>
<?php } ?>


                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-white" data-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary demo2" name="save" id="save">Save</button>
                                </div>

                                </form>
                            </div>
                        </div>
                    </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="ibox ">
                      <div class="ibox-title">
                          <h5>Treatment Records</h5>
                          <div class="ibox-tools">
                              <a href="add-treatment.php" class="btn btn-primary btn-xs">
                                  Add New Record
                              </a>

                              <a class="collapse-link">
                                  <i class="fa fa-chevron-up"></i>
                              </a>

                          </div>

                      </div>
                      <div class="ibox-content">

                        <?php

$ret=mysqli_query($con,"select * from tblmedicalhistory  where PatientID='$vid'");



 ?>
                          <input type="text" class="form-control form-control-sm m-b-xs" id="filter"
                                 placeholder="Search...">

                          <table class="footable table table-stripped" data-page-size="14" data-filter=#filter>
                              <thead>
                                  <tr>
                                    <th>#</th>
                                    <th>Blood Pressure</th>
                                    <th>Weight</th>
                                    <th>Blood Sugar</th>
                                    <th>Body Temprature</th>
                                    <th>Visit Date</th>
                                    <th>Action</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                    <?php
while ($row=mysqli_fetch_array($ret)) {
  ?>
                                      <tr>
                                        <td><?php echo $cnt;?></td>
                                        <td><?php  echo $row['BloodPressure'];?></td>
                                        <td><?php  echo $row['Weight'];?></td>
                                        <td><?php  echo $row['BloodSugar'];?></td>
                                        <td><?php  echo $row['Temperature'];?></td>
                                        <td><?php  echo $row['CreationDate'];?></td>
                                          <td><a href="sample-patient.html" class="btn btn-primary btn-xs">View</a></td>
                                      </tr>
                                      <?php $cnt=$cnt+1;} ?>


                              </tbody>
                              <tfoot>
                              <tr>
                                  <td colspan="9">
                                      <ul class="pagination float-right"></ul>
                                  </td>
                              </tr>
                              </tfoot>
                          </table>
                      </div>
                  </div>
              </div>
          </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="ibox ">
                      <div class="ibox-title">
                          <h5>Prescription Records</h5>
                          <div class="ibox-tools">
                              <a href="sample-patient-prescription.html" class="btn btn-primary btn-xs">
                                  Add New Record
                              </a>
                              <a class="collapse-link">
                                  <i class="fa fa-chevron-up"></i>
                              </a>

                          </div>

                      </div>
                      <div class="ibox-content">
                          <input type="text" class="form-control form-control-sm m-b-xs" id="filter"
                                 placeholder="Search...">

                          <table class="footable table table-stripped" data-page-size="14" data-filter=#filter>
                              <thead>
                                  <tr>
                                      <th>Date</th>
                                      <th>Description</th>
                                      <th>Action</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                      <tr>
                                          <td>December 18, 2020</td>
                                          <td>Prescribed to take antibiotics (fucidin cream) 2x daily before every meal</td>
                                          <td><a href="sample-patient.html" class="btn btn-primary btn-xs">View</a></td>
                                      </tr>
                                      <tr>
                                          <td>November 30, 2020</td>
                                          <td>Added another set of medications for infection</td>
                                          <td><button class="btn btn-primary btn-xs" aria-expanded="false">View</button></td>
                                      </tr>
                                      <tr>
                                          <td>November 16, 2020</td>
                                          <td>Prescribed new antibiotics</td>
                                          <td><button class="btn btn-primary btn-xs" aria-expanded="false">View</button></td>
                                      </tr>

                              </tbody>
                              <tfoot>
                              <tr>
                                  <td colspan="9">
                                      <ul class="pagination float-right"></ul>
                                  </td>
                              </tr>
                              </tfoot>
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

      <script src="insp/js/plugins/datapicker/bootstrap-datepicker.js"></script>

  <!-- Mainly scripts -->
  <script src="insp/js/jquery-3.1.1.min.js"></script>
  <script src="insp/js/popper.min.js"></script>
  <script src="insp/js/bootstrap.js"></script>
  <script src="insp/js/plugins/metisMenu/jquery.metisMenu.js"></script>
  <script src="insp/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  <!-- FooTable -->
  <script src="insp/js/plugins/footable/footable.all.min.js"></script>

  <!-- Sweet alert -->
    <script src="insp/js/plugins/sweetalert/sweetalert.min.js"></script>

  <!-- Custom and plugin javascript -->
  <script src="insp/js/inspinia.js"></script>
  <script src="insp/js/plugins/pace/pace.min.js"></script>
  <script src="insp/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  <!-- Page-Level Scripts -->
  <script>
      $(document).ready(function() {

          $('.footable').footable();
          $('.footable2').footable();


          var mem = $('#data_1 .input-group.date').datepicker({
              todayBtn: "linked",
              keyboardNavigation: false,
              forceParse: false,
              calendarWeeks: true,
              autoclose: true
          });

          var yearsAgo = new Date();
          yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);

          $('#selector').datepicker('setDate', yearsAgo );

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
