<?php

include_once("../koneksi/koneksi.php");

if (isset($_POST['update'])) {
    $id = $_GET['id_produk'];

    $nama_produk = $_POST['nama_produk'];
    $harga = $_POST['harga'];
    $stok = $_POST['stok'];
    $foto = $_POST['foto'];


    $result = mysqli_query($koneksi, "UPDATE produk SET nama_produk='$nama_produk', harga='$harga', stok='$stok', foto='$foto' WHERE id_produk=$id");

    header("Location: index.php?page=stok");
    echo "<script>alert('Berhasil')</script>";
}

$id = $_GET['id_produk'];

$result1 = mysqli_query($koneksi, "SELECT * FROM produk WHERE id_produk=$id");

while ($barang_data = mysqli_fetch_array($result1)) {
    $produk_id = $barang_data['nama_produk'];
    $harga = $barang_data['harga'];
    $stok = $barang_data['stok'];
    $foto = $barang_data['foto'];
}
?>

<div class="row well">
    <div class="col-md-4">
        <div class="card well">
            <div class="card-header">
                <h3 class="">Update barang</h3>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                <div class="mb-3 mt-3">
                        <label for="nama" class="form-label">Nama Produk:</label>
                        <input type="text" class="form-control" id="nama_produk" value="<?php echo $produk_id; ?>" placeholder="Masukkan Nama" name="nama_produk">
                    </div>
                    <div class="mb-3">
                        <label for="harga" class="form-label">Harga:</label>
                        <input type="text" class="form-control" id="harga" value="<?php echo $harga; ?>" placeholder="Masukkan Harga" name="harga">
                    </div>
                    <div class="mb-3">
                        <label for="stok" class="form-label">Stok:</label>
                        <input type="text" class="form-control" id="stok" value="<?php echo $stok; ?>" placeholder="Masukkan Stok" name="stok">
                    </div>
                    <div class="mb-3">
                            <label for="foto" class="form-label">Foto<span style="color: red;"> *</span></label>
                            <input type="file" class="form-control" id="foto" value="<?php echo $foto;?>" name="foto" >
                            <p style="color: red;">Hanya bisa menginput foto dengan ekstensi PNG, JPG, JPEG, SVG</p>
                        </div>

                    <button type="submit" name="update" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>