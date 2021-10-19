<?php
//include database connection file
include_once("koneksi.php");

//get id from URL to delete that user
$nim=$_GET['nim'];

$result=mysqli_query($con, "DELETE FROM mahasiswa WHERE nim='$nim'");

header("Location::index.php");
?>