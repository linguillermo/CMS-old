<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit']))
{
	$docid=$_SESSION['id'];
	$patname=$_POST['patname'];
$patcontact=$_POST['patcontact'];
$patemail=$_POST['patemail'];
$gender=$_POST['gender'];
$pataddress=$_POST['pataddress'];
$patage=$_POST['patage'];
$medhis=$_POST['medhis'];
$sql=mysqli_query($con,"insert into tblpatient(Docid,PatientName,PatientContno,PatientEmail,PatientGender,PatientAdd,PatientAge,PatientMedhis) values('$docid','$patname','$patcontact','$patemail','$gender','$pataddress','$patage','$medhis')");
if($sql)
{
echo "<script>alert('Patient info added Successfully');</script>";
header('location:add-patient.php');

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
                    <a href="doctor-dashboard.html"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>

                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Patients</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li class="active"><a href="doctor-patient-records.html">Patient Records</a></li>
                        <li><a href="doctor-treatment-records.html">Treatment Records</a></li>
                        <li><a href="doctor-prescription-records.html">Prescription Records</a></li>

                    </ul>
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
                <a href="login.html">
                    <i class="fa fa-sign-out"></i> Log out
                </a>
            </li>

        </ul>

        </nav>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="ibox">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="m-b-md">
                                <a href="#" class="btn btn-white btn-xs float-right">Edit Patient Profile</a>
                                <h2>Benedict Santos Cruz</h2>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <dl class="row mb-0">
                                <div class="col-sm-4 text-sm-right"><dt>Status:</dt> </div>
                                <div class="col-sm-8 text-sm-left"><dd class="mb-1"><span class="label label-primary">Active</span></dd></div>
                            </dl>
                            <dl class="row mb-0">
                                <div class="col-sm-4 text-sm-right"><dt>Address:</dt> </div>
                                <div class="col-sm-8 text-sm-left"><dd class="mb-1">14 Times Street, West Triangle, Quezon City</dd> </div>
                            </dl>
                            <dl class="row mb-0">
                                <div class="col-sm-4 text-sm-right"><dt>Phone No:</dt> </div>
                                <div class="col-sm-8 text-sm-left"> <dd class="mb-1">+639175658879</dd></div>
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
                                <div class="col-sm-8 text-sm-left"> <dd class="mb-1"> 	24 y/o </dd></div>
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
                                    <dd class="mb-1"> November 16, 2020 23:36:57</dd>
                                </div>
                            </dl>

                        </div>
                    </div>


                </div>
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

                                        <fieldset>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Date:</label>
                                                <div class="col-sm-2">
                                                    <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="12/01/2020">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Time:</label>
                                                <div class="col-sm-2">
                                                    <div class="input-group clockpicker" data-autoclose="true">
                                                        <input type="text" class="form-control clockpicker" value="09:30" >
                                                        <span class="input-group-addon">
                                                            <span class="fa fa-clock-o"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Description:</label>
                                                <div class="col-sm-10">
                                                    <div class="summernote">
                                                        <h3>Lorem Ipsum is simply</h3>
                                                        dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry's</strong> standard dummy text ever since the 1500s,
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                                                        <br/>

                                                    </div>
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



        $('.summernote').summernote();

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
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
