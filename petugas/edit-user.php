<?php 
$id = $_GET['id_user'];

$result1 = mysqli_query($koneksi, "SELECT * FROM user WHERE id_user=$id");

while ($barang_data = mysqli_fetch_array($result1)) {
    $username = $barang_data['username'];
    $password = md5($barang_data['password']);
    $level = $barang_data['level'];
}
    if(isset($_POST['submit'])) {
        $name = $_POST['username'];
        $level = $_POST['level'];
        $password = md5($_POST['password']);

        $result = mysqli_query($koneksi, "UPDATE user SET username = '$name', Password = '$password', level = '$level' WHERE id_user = '$id'");

        echo "<script>alert('Berhasil mengedit data user');window.location.href='?page=user';</script>";
    }

?>

<div class="row">
        <div class="col-md-4">
            <div class="card well">
                <div class="card-header">
                    <h3 class="">Edit User</h3>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        
                        <div class="mb-3 mt-3">
                            <label for="nama" class="form-label">Nama:</label>
                            <input type="text" class="form-control" value="<?php echo $username; ?>" id="nama" placeholder="Enter Name" name="username">
                        </div>
                        <div class="mb-3">
                            <label for="pwd" class="form-label">Password:</label>
                            <input type="password" class="form-control" id="pwd" value="<?php echo $password; ?>" placeholder="Enter password" name="password">
                        </div>
                        <div class="mb-3">
                            <label for="level" class="form-label">Level<span style="color: red;"> *</span></label>
                            <select class="form-control" name="level" id="level">
                                <?php if ($level == "Administrator") { ?>
                                    <option value="Administrator">Administrator</option>
                                    <option value="Petugas">Petugas</option>
                                <?php } else { ?>
                                    <option value="Petugas">Petugas</option>
                                    <option value="Administrator">Administrator</option>
                                <?php } ?>
                            </select>
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Edit</button>
                    </form>
                </div>
            </div>
        </div>
</div>