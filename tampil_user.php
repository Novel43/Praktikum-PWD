<?php
echo "<h2>User</h2>
<form method=POST action=form_user.php>
<input type=submit value='Tambah User'>
</form>

<table>
<tr><th>No</th><th>Username</th><th>Nama Lengkap</th><th>Email</th><th>Aksi</th></tr>";

include"../koneksi.php";
$sql="select*from user order by id_user";
$tampil = mysqli_query($con,$sql);
if (mysqli_num_rows($tampil) > 0) {
	$no=1;
	while ($r = mysqli_fetch_array($tampil) {
		echo"<tr><td>$no</td><td>$r[id_user]</td>
		<td>$r[nama]</td>
		<td>$r[email]</td>
		<td><a href='hapu_user.php?id=$r[id_user]'>Hapus</a></td>
		</tr>";
			$no++;
	}
	echo "</table";
}else{
	echo "0 results";
}
mysqli_close($con);

?>