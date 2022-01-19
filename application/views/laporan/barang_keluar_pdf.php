<?php
function tgl_indo($tanggal){
	$bulan = array (
		1 =>   'Jan',
		'Feb',
		'Mar',
		'Apr',
		'Mei',
		'Jun',
		'Jul',
		'Ags',
		'Sep',
		'Okt',
		'Nov',
		'Des'
	);
	$pecahkan = explode('-', $tanggal);
 
	return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?= $judul ?></title>
<style>

body{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
#customers {
  border-collapse: collapse;
  width: 100%;
  
}

#customers td {
  border: 0px solid $#ddd;
  padding: 8px;
  font-size: 12px;
}
#customers th{
  padding: 8px;
  font-size: 12px;
}


#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #858796;
  color: white;
}
</style>
</head>
<body>
<table border="0" width="100%">
<tr>
        <td align="center"><h1>Pusat Oleh-oleh Sofia Shafira</h1></td>
    </tr>
    <tr>
        <td align="center"><h5>Jl. Raya Magelang-Semarang, Kec. Pringsurat, Kabupaten Temanggung, Jawa Tengah 56272</h5></td>
    </tr>
    <tr>
        <td align="center"><h6>___________________________________________________________________________________________________________________________</h6></td>
    </tr>
    <br>
    <tr>
        <td align="center"><h3>Laporan Barang Keluar</h3></td>
    </tr>
    <tr>
        <td align="center">
            <?php if($tglawal == '' || $tglakhir == ''): ?>
                <h6>Semua Tanggal</h6>
            <?php else: ?>
                <h6><?= tgl_indo($tglawal) ?> - <?= tgl_indo($tglakhir) ?></h6>
            <?php endif; ?>
            
        </td>
    </tr>
</table>
<br>
<table id="customers">
  <tr>
    <th>No</th>
    <th>Tanggal Keluar</th>
    <th>No.Transaksi</th>
    <th>Nama Barang</th>
    <th>Harga</th>
    <th>Jumlah Keluar</th>
    <th>TOTAL</th>
  </tr>
      <?php $no=1; foreach ($data as $d) { ?>
        <tr>
          <td><?= $no++ ?></td>
          <td><?= tgl_indo($d->tgl_keluar) ?></td>
          <td><?= $d->id_barang_keluar ?></td>
          <td><?= $d->nama_barang ?></td>
          <td>Rp <?= number_format($d->harga,0,',','.'); ?></td>
          <td><?= $d->jumlah_keluar ?></td>
          <td>
            <?php 
              $total = $d->jumlah_keluar  * $d->harga;
              echo 'Rp '.number_format($total,0,',','.');
            ?>
          </td>
        </tr>
      <?php } ?>
</table>

</body>
</html>
