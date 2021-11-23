<?php
include"koneksi.php";
	$id_user=$_POST['id_user'];
	$nama=$_POST['nama_lengkap'];
	$email=$_POST['email'];
	$pass=md5($_POST[password]);
$sql="INSERT INTO user(id_user, password, nama, email) VALUES('$id_user', '$pass', '$nama', '$email')";
$query=mysql_query($con, $sql);

mysql_close($con);

header('location:tampil_user.php');
?>