<!DOCTYPE html>
<html>
<head>
	<title>Tambah Data Mahasiswa</title>
</head>
<body>
	<a href="index.php">Go To Home</a>
	<br/><br/>

	<form action="tambah.php" method="post" name="form1">
		<table width="25%" border="0">
			<tr>
				<td>Nim</td>
				<td><input type="text" name="nim"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama"></td>
			</tr>
			<tr>
				<td>Gender (L/P)</td>
				<td><input type="text" name="jkel"></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td><input type="text" name="alamat"></td>
			</tr>
			<tr>
				<td>Tgl Lahir</td>
				<td><input type="text" name="tgllhr"></td>
			</tr>
			<tr>
				<td>Telepon</td>
				<td><input type="text" name="telepon"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="Submit" value="Tambah"></td>
			</tr>
		</table>
	</form>
	<?php
	if(isset($_POST['Submit'])){
		$nim = $_POST['nim'];
		$nama = $_POST['nama'];
		$jkel = $_POST['jkel'];
		$alamat = $_POST['alamat'];
		$tgllhr = $_POST['tgllhr'];
		$telepon = $_POST['telepon'];
		include_once("koneksi.php");
		$result = mysqli_query($con, "INSERT INTO mahasiswa(nim,nama,jkel,alamat,tgllhr,telepon) VALUES('$nim','$nama','$jkel','$alamat','tgllhr','telepon')");
		echo "Data Berhasil Disimpan.<a href='index.php'>View User</a>";
	}
	?>
</body>
</html>