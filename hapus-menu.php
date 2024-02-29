<?php
include_once("koneksi/koneksi.php")
$id = $_GET['id'];
$sql = $oneksi->query("DELETE FROM detailpenjualan WHERE id_penjualan=$id");
echo "<script>alert('data berhasil di hapus'); window.location.href = 'daftar-transaksi.php';</script>";
?>