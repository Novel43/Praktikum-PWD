<?php
$lokasi_file = $FILES['fupload']['tmp_name'];
$lokasi_file = $FILES['fupload']['name'];
$deskripsi = $_POST['deskripsi'];

$direktori = "c:/wamp/www/NIM/$nama_file";

if(move_uploaded_file($lokasi_file, $direktori))
{
	echo "Nama File: <br>$nama_file</br>Berhasil di upload <br>";
	echo "Deskripsi File: <br>$deskripsi";
}
else{
	echo "File Gagal Diupload";
}
?>