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
    $labs=$_POST['labs'];
    $weight=$_POST['weight'];
    $temp=$_POST['temp'];
   $pres=$_POST['pres'];


      $query.=mysqli_query($con, "insert   tblmedicalhistory(PatientID,BloodPressure,Laboratories,Weight,Temperature,MedicalPres)value('$vid','$bp','$labs','$weight','$temp','$pres')");
    if ($query) {
    echo '<script>alert("Medicle history has been added.")</script>';
    echo "<script>window.location.href ='view-patient.php?viewid=$vid'</script>";
  }
  else
    {
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }


}



if (isset($_POST["addInvoice"]))
	{

		$patientID = $_GET['viewid'];

    $sql = "INSERT INTO prescriptions (patientID) VALUES ('$patientID')";
		mysqli_query($con, $sql);
		$prescID = mysqli_insert_id($con);

		for ($a = 0; $a < count($_POST["Medication"]); $a++)
		{
			$sql = "INSERT INTO tblprescription (patientID, prescID, Medication, Type, Quantity, morningBM, morningAM, afternoonBM, afternoonAM, eveningBM, eveningAM, duration, instructions) VALUES ('$patientID', '$prescID', '" . $_POST["Medication"][$a] . "', '" . $_POST["Type"][$a] . "', '" . $_POST["Quantity"][$a] . "', '" . $_POST["morningBM"][$a] . "', '" . $_POST["morningAM"][$a] . "', '" . $_POST["afternoonBM"][$a] . "', '" . $_POST["afternoonAM"][$a] . "', '" . $_POST["eveningBM"][$a] . "', '" . $_POST["eveningAM"][$a] . "', '" . $_POST["duration"][$a] . "', '" . $_POST["instructions"][$a] . "')";
			mysqli_query($con, $sql);
		}

		echo "<p>Invoice has been added.</p>";
	}

?>




<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Clinica Abeleda | Patient Records</title>

    <link href="insp/css/bootstrap.min.css" rel="stylesheet">
    <link href="insp/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">

    <link href="insp/css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
		<script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>


    <link href="insp/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="insp/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="insp/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="insp/css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">
    <link href="insp/css/plugins/touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">


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
                <li class="active">
  									<a href="manage-patient.php"><i class="fa fa-table"></i> <span class="nav-label">Patient Records</span></a>

  							</li>
                <li>
                    <a href="doctor-approved-appointments.html"><i class="fa fa-calendar"></i> <span class="nav-label">Appointments</span>  </a>
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

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">


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
	                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"><?php  echo $row['PatientOccupation'];?></dd></div>
	                          </dl>
	                          <dl class="row mb-0">
	                              <div class="col-sm-4 text-sm-right"><dt>Date of Birth:</dt> </div>
	                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"><?php echo date('F j, Y', strtotime($row['PatientBday']));?></dd></div>
	                          </dl>
	                          <dl class="row mb-0">
	                              <div class="col-sm-4 text-sm-right"> <dt>Age:</dt></div>
	                              <div class="col-sm-8 text-sm-left"> <dd class="mb-1"> 	<?php  echo $row['PatientAge'];?> y/o </dd></div>
	                          </dl>



	                      </div>
	                      <div class="col-lg-6" id="cluster_info">

	                          <dl class="row mb-0">
	                              <div class="col-sm-4 text-sm-right">
	                                  <dt>Last Appointment:</dt>
	                              </div>
	                              <div class="col-sm-8 text-sm-left">
	                                  <dd class="mb-1"><?php  echo date('F j, Y g:i A', strtotime($row['UpdationDate']));?></dd>
	                              </div>
	                          </dl>
	                          <dl class="row mb-0">
	                              <div class="col-sm-4 text-sm-right">
	                                  <dt>Created:</dt>
	                              </div>
	                              <div class="col-sm-8 text-sm-left">
	                                  <dd class="mb-1"> <?php  echo date('F j, Y g:i A', strtotime($row['CreationDate']));?></dd>
	                              </div>
	                          </dl>

	                      </div>
	                  </div>


	              </div>

								<?php }?>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>Prescription</h5>
                            <div class="ibox-tools">
                                <button class="btn btn-primary btn-xs" onclick="addItem();">
                                    Add Medicine
                                </button>
                                <button class="btn btn-success btn-xs">
                                    Print
                                </button>
                            </div>
                        </div>






                        <div class="ibox-content">





<form method="POST" action="">
                            <table class="table table-bordered" id="myTable">
                                <thead style="text-align:center">
                                <tr>
                                  <th rowspan="2" style="vertical-align:middle; width:20%">Medication</th>
                                  <th rowspan="2" style="vertical-align:middle; width:10%">Type</th>
                                  <th rowspan="2" style="vertical-align:middle; width:5%">Quantity</th>
                                  <th colspan="2" style="vertical-align:middle; width:10%">Morning</th>
                                  <th colspan="2" style="vertical-align:middle; width:10%">Afternoon</th>
                                  <th colspan="2" style="vertical-align:middle; width:10%">Night</th>
                                  <th rowspan="2" style="vertical-align:middle; width:10%">Duration</th>
                                  <th rowspan="2" style="vertical-align:middle; width:20%">Instructions</th>
                                  <th rowspan="2" style="vertical-align:middle; width:5%">Actions</th>
                                </tr>
                                <tr>
                                  <td style="vertical-align:middle; width:5%"><b>BM</b></td>
                                  <td style="vertical-align:middle; width:5%"><b>AM</b></td>
                                  <td style="vertical-align:middle; width:5%"><b>BM</b></td>
                                  <td style="vertical-align:middle; width:5%"><b>AM</b></td>
                                  <td style="vertical-align:middle; width:5%"><b>BM</b></td>
                                  <td style="vertical-align:middle; width:5%"><b>AM</b></td>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                <!-- <tr>
                                    <td><input type='text' value=''></td>
                                    <td><input type='text' value=''></td>
                                    <td><input type='text' value=''></td>
                                    <td><input type='text' value=''></td>
                                    <td><input type='text' value=''></td>
                                    <td><input type='text' value=''></td>
                                    <td><input type='button' class='AddNew' value='Add new item'></td>
                                </tr> -->


                                <!-- <tr>
                                    <td>Zantac</td>
                                    <td>300 mg Oral Tablet</td>
                                    <td>5</td>
                                    <td>Take 1 tablet after meal</td>
                                    <td>12/20/2020</td>
                                    <td>5 days</td>
                                    <td><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit </a>
                                        <a href="#" class="btn btn-white btn-sm"><i class="fa fa-trash"></i> Remove </a></td>
                                </tr>
                                <tr>
                                    <td>Zantac</td>
                                    <td>300 mg Oral Tablet</td>
                                    <td>5</td>
                                    <td>Take 1 tablet after meal</td>
                                    <td>12/20/2020</td>
                                    <td>5 days</td>
                                    <td><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit </a>
                                        <a href="#" class="btn btn-white btn-sm"><i class="fa fa-trash"></i> Remove </a></td> -->

                                </tbody>
                            </table>

                            <!-- <div style="text-align: center; padding: 10px;">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="addInvoice" class="btn btn-primary" value="Save">
                            </div> -->

                        </div>
                    </div>
                </div>

            </div>












<script>
	var items = 0;
	function addItem() {
		items++;

		var html = "<tr>";
			// html += "<td>" + items + "</td>";
			// html += "<td><input type='text' name='Medication[]'></td>";

      html += "<td style='width:20%'><input type='text'  style='width:100%' name='Medication[]'></td>";
	    html += "<td style='width:10%'><input type='text'  style='width:100%' name='Type[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='Quantity[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='morningBM[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='morningAM[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='afternoonBM[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='afternoonAM[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='eveningBM[]'></td>";
      html += "<td style='width:5%'><input type='text' style='width:100%' name='eveningAM[]'></td>";
      html += "<td style='width:10%'><input type='text' style='width:100%' name='duration[]'></td>";
      html += "<td style='width:20%'><input type='text' style='width:100%' name='instructions[]'></td>";

      html += "<td style='width:5%'><a href='#' class='btn btn-white btn-sm' onclick='deleteRow(this)' style='width:100%'><i class='fa fa-trash'></i></a></td>";
		html += "</tr>";

		var row = document.getElementById("tbody").insertRow();
		row.innerHTML = html;
	}


  function deleteRow(r) {
  var i = r.parentNode.parentNode.rowIndex;
  document.getElementById("myTable").deleteRow(i);
}
</script>


            <div style="text-align: center; padding: 10px;">
                <a type="button" class="btn btn-danger" href="view-patient.php?viewid=<?php echo $vid;?>" >Cancel</a>
                <input type="submit" name="addInvoice" class="btn btn-primary" value="Save">
            </div>

            </form>
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

<!-- Custom and plugin javascript -->
<script src="insp/js/inspinia.js"></script>
<script src="insp/js/plugins/pace/pace.min.js"></script>

<!-- SUMMERNOTE -->
<script src="insp/js/plugins/summernote/summernote-bs4.js"></script>

<script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>

<script src="insp/js/plugins/ckeditor/ckeditor.js"></script>

<!-- Data picker -->
<script src="insp/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Clock picker -->
<script src="insp/js/plugins/clockpicker/clockpicker.js"></script>

<!-- Chosen -->
<script src="insp/js/plugins/chosen/chosen.jquery.js"></script>

<!-- TouchSpin -->
<script src="insp/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"></script>

<script>
    $(document).ready(function(){



        $('.summernote').summernote({
					height: 300
				});

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

    });
</script>



<script>
    $(document).ready(function(){

        $('.chosen-select').chosen({width: "100%"});

        $('.clockpicker').clockpicker();

        $(".touchspin1").TouchSpin({
                buttondown_class: 'btn btn-white',
                buttonup_class: 'btn btn-white'
            });

    });
</script>

<script>
											 CKEDITOR.replace( 'editor1' );
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
