<?php
$server ="localhost";
$user ="root";
$password ="";
$database ="kasirgh";

$koneksi = new mysqli ($server, $user, $password, $database);

if (!$koneksi) {
    die("<script>alert('tidak terhubung dengan database)</script>");
}
?>