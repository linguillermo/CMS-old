<?php

//Devt Connection
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'hms');

//Remote Database Connection

/* define('DB_SERVER','us-cdbr-east-03.cleardb.com');
define('DB_USER','b928410497290a');
define('DB_PASS' ,'c98d8d48');
define('DB_NAME', 'heroku_7e73c60514d54d5'); */

$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>