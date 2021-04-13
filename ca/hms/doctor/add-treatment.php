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
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li><a class="nav-link active" data-toggle="tab" href="#tab-1"> Info</a></li>


                                <li><a class="nav-link" data-toggle="tab" href="#tab-4"> Images</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">
																				<form method="post" name="submit">
                                        <fieldset>

																						<div class="form-group row"><label class="col-sm-2 col-form-label">Weight:</label>
                                                <div class="col-md-4"><input name="weight" class="form-control wd-450"></div>
                                            </div>
																						<div class="form-group row"><label class="col-sm-2 col-form-label">Laboratories:</label>
                                                <div class="col-md-4"><input name="labs" class="form-control wd-450"></div>
                                            </div>


                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Description:</label>
                                                <div class="col-sm-10">
                                                    <textarea class="summernote" name="pres">


                                                    </textarea>
                                                </div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Medication</label>
                                                <div class="col-sm-10">
                                                    <div class="row">
                                                        <div class="col-md-2">

                                                            <div class="form-group">

                                                                <div>
                                                                    <select data-placeholder="Choose a Country..." class="chosen-select"  tabindex="2">
                                                                    <option value="">Medicine</option>
                                                                    <option value="Ibuprofen">Ibuprofen</option>
                                                                    <option value="Paracetamol">Paracetamol</option>
                                                                    <option value="Tylenol">Tylenol</option>

                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col-sm-2">
                                                            <input class="touchspin1" type="text" value="" placeholder="0" name="demo1">
                                                        </div>

                                                        <div class="col-sm-2">
                                                            <a href="#" class="btn btn-primary">Add Medicine</a>
                                                        </div>
                                                    </div>



                                                    <div class="table-responsive">
                                                        <table class="table table-stripped table-bordered">

                                                            <thead>
                                                            <tr>
                                                                <th style="width: 20%">
                                                                    Medicine
                                                                </th>
                                                                <th style="width: 50%">
                                                                    Description
                                                                </th>
                                                                <th>
                                                                    Quantity
                                                                </th>

                                                                <th>
                                                                    Actions
                                                                </th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <tr>
                                                                <td>
                                                                    Medicine 1
                                                                </td>
                                                                <td>
                                                                    Insert Medicine Description Here
                                                                </td>
                                                                <td>
                                                                    1
                                                                </td>

                                                                <td>
                                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Medicine 2
                                                                </td>
                                                                <td>
                                                                    Insert Medicine Description Here
                                                                </td>
                                                                <td>
                                                                    1
                                                                </td>

                                                                <td>
                                                                    <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                                </td>
                                                            </tr>


                                                            </tbody>

                                                        </table>
                                                    </div>


                                                </div>
                                            </div>

                                        </fieldset>

																				<div style="text-align: center; padding: 10px;">
														                <a type="button" class="btn btn-danger" href="view-patient.php?viewid=<?php echo $vid;?>" data-dismiss="modal">Cancel</a>
														                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
														            </div>
</form>
                                    </div>



                                </div>




                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered table-stripped">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        Image preview
                                                    </th>
                                                    <th>
                                                        Description
                                                    </th>
                                                    <th>
                                                        Actions
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/lesion.jpg" style="width: 150px">
                                                    </td>
                                                    <td>
                                                        <textarea class="form-control" rows="4" cols="50">Within and surrounding the foci of necrosis, there were moderate numbers of lymphocytes, a few plasma cells and mononuclear phagocytes, rare neutrophils and scattered petechial hemorrhages.
                                                        </textarea>
                                                    </td>
                                                    <td>
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span><input type="hidden" value="" name="..."><input type="file" name=""></span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
                                                        </div>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/lesion.jpg" style="width: 150px">
                                                    </td>
                                                    <td>
                                                        <textarea class="form-control" rows="4" cols="50">Within and surrounding the foci of necrosis, there were moderate numbers of lymphocytes, a few plasma cells and mononuclear phagocytes, rare neutrophils and scattered petechial hemorrhages.
                                                        </textarea>
                                                    </td>
                                                    <td>
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span><input type="hidden" value="" name="..."><input type="file" name=""></span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
                                                        </div>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/lesion.jpg" style="width: 150px">
                                                    </td>
                                                    <td>
                                                        <textarea class="form-control" rows="4" cols="50">Within and surrounding the foci of necrosis, there were moderate numbers of lymphocytes, a few plasma cells and mononuclear phagocytes, rare neutrophils and scattered petechial hemorrhages.
                                                        </textarea>
                                                    </td>
                                                    <td>
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span><input type="hidden" value="" name="..."><input type="file" name=""></span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
                                                        </div>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <div style="text-align: center; padding: 10px;">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                <a href="sample-patient.html" type="button" class="btn btn-primary">Save</a>
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
