<?php
$host       = "localhost";
$user       = "root";
$pass       = "";
$db         = "bnnn";

$koneksi    = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
    die("tidak bisa terkoneksi");
}
$nama       = "";
$nip     = "";
$pangkat   = "";
$golongan      = "";
$jabatan    = "";
$status     = "";
$keterangan = "";
$sukses     = "";
$error      = "";

if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = "";
}

if ($op == 'delete') {
    $id         = $_GET['id'];
    $sql1       = "DELETE FROM pegawai WHERE id=" . $id;
    $q1         = mysqli_query($koneksi, $sql1); {
        if ($q1) {
            $sukses = "Berhasil Hapus Data";
        } else {
            $error  = "Gagal Hapus Data";
        }
    }
}

if ($op == 'edit') {
    $id             = $_GET['id'];
    $sql1           = "select * from pegawai where id = '$id'";
    $q1             = mysqli_query($koneksi, $sql1);
    $r1             = mysqli_fetch_array($q1);
    $nama           = $r1['nama'];
    $nip         = $r1['nip'];
    $pangkat       = $r1['pangkat'];
    $golongan          = $r1['golongan'];
    $jabatan        = $r1['jabatan'];
    $status         = $r1['status'];
    $keterangan     = $r1['keterangan'];

    if ($nama == '') {
        $error = "Data tidak ditemukan";
    }
}

if (isset($_POST['simpan'])) { // untuk create
    $nama       = $_POST['nama'];
    $nip     = $_POST['nip'];
    $pangkat   = $_POST['pangkat'];
    $golongan       = $_POST['golongan'];
    $jabatan        = $_POST['jabatan'];
    $status        = $_POST['status'];
    $keterangan     = $_POST['keterangan'];



    if ($nama && $nip && $pangkat && $golongan && $jabatan && $status && $keterangan) {
        if ($op == 'edit') { //untuk update
            $sql1   = "update pegawai set nama = '$nama', nip ='$nip', pangkat ='$pangkat', golongan = '$golongan', jabatan = '$jabatan', status = '$status', keterangan = '$keterangan' where id = '$id' ";
            $q1 = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses = "Data berhasil di update";
            } else {
                $error = "Data gagal diupdate";
            }
        } else { //untul insert
            $sql1 = "insert into pegawai(nama,nip,pangkat,golongan,jabatan,status,keterangan) values ('$nama','$nip', '$pangkat', '$golongan', '$jabatan', '$status', '$keterangan')";
            $q1   = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses     = "Berhasil Memasukkan Data Baru";
            } else {
                $error      = "Gagal Memasukkan Data";
            }
        }
    } else {
        $error = "Silahkan Masukkan Semua Data";
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pegawai</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .mx-auto {
            width: 1000px
        }
        .card {
            margin-top: 10px
        }
    </style>
</head>

<body data-open="click">
  <?php require_once 'sidebar.php' ?>

  <div class="sidenav-overlay"></div>
  <div class="drag-target"></div>
    <div class="mx-auto">
    <div class="card">
            <div class="card-header">
                -
            </div>
        <!-- untuk masukkan data -->
        <div class="card">
            <div class="card-header">
                <h1>Nama Pegawai</h1>
            </div>
            <div class="card-body">
                <?php
                if ($error) {
                ?>
                <div class="alert alert-danger" role="alert">
                    <?php echo $error ?>
                </div>
                <?php
                    header("refresh:5;url=pegawai.php"); // 5= detik
                }
                ?>

                <?php
                if ($sukses) {
                ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $sukses ?>
                </div>
                <?php
                    header("refresh:5;url=pegawai.php"); // 5= detik
                }
                ?>
                <form action="" method="POST">
                    <div class="mb-1 row">
                        <label for="nama" class="col-sm-4 col-form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama  ?>"
                            placeholder="Masukkan Nama">
                    </div>

                    <div class="mb-1 row">
                        <label for="nip" class="col-sm-4 col-form-label">NIP/NRP</label>
                        <input type="text" class="form-control" id="nip" name="nip" value="<?php echo $nip  ?>"
                            placeholder="Masukkan NIP/NRP">
                    </div>

                    <div class="mb-1 row">
                        <label for="pangkat" class="col-sm-4 col-form-label">Pangkat</label>
                        <input type="text" class="form-control" id="pangkat" name="pangkat"
                            value="<?php echo $pangkat  ?>" placeholder="Masukkan Pangkat">
                    </div>

                    <div class="mb-1 row">
                        <label for="golongan" class="col-sm-4 col-form-label">Golongan</label>
                        <input type="text" class="form-control" id="golongan" name="golongan"
                            value="<?php echo $golongan  ?>" placeholder="Masukkan Golongan">
                    </div>

                    <div class="mb-1 row">
                        <label for="jabatan" class="col-sm-4 col-form-label">Jabatan</label>
                        <input type="text" class="form-control" id="jabatan" name="jabatan"
                            value="<?php echo $jabatan  ?>" placeholder="Masukkan Jabatan">
                    </div>

                    <div class="mb-1 row">
                        <label for="status" class="col-sm-4 col-form-label">Status</label>
                        <input type="text" class="form-control" id="status" name="status" value="<?php echo $status  ?>"
                            placeholder="Masukkan Status">
                    </div>

                    <div class="mb-1 row">
                        <label for="keterangan" class="col-sm-4 col-form-label">Keterangan</label>
                        <input type="text" class="form-control" id="keterangan" name="keterangan"
                            value="<?php echo $keterangan  ?>" placeholder="Masukkan Keterangan">
                    </div>

                    <div class="col-12">
                        <input type="submit" name="simpan" value="Simpan Data" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>

        <!-- untuk mengeluarkan data -->
        <div class="card">
            <div class="card-header text-white bg-secondary">
                Data Pegawai
            </div>
            <div class="card-body">
                <!--<form action="" method="POST"> -->
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">Nama</th>
                            <th scope="col">NIP/NRP</th>
                            <th scope="col">Pangkat</th>
                            <th scope="col">Golongan</th>
                            <th scope="col">Jabatan</th>
                            <th scope="col">Status</th>
                            <th scope="col">Keterangan</th>
                        </tr>
                    <tbody>
                        <?php
                        $sql2   = "select * from pegawai order by id desc";
                        $q2 = mysqli_query($koneksi, $sql2);
                        $urut = 1;
                        while ($r2 = mysqli_fetch_array($q2)) {
                            $id = $r2['id'];
                            $nama = $r2['nama'];
                            $nip = $r2['nip'];
                            $pangkat = $r2['pangkat'];
                            $golongan = $r2['golongan'];
                            $jabatan = $r2['jabatan'];
                            $status = $r2['status'];
                            $keterangan = $r2['keterangan'];

                        ?>
                        <tr>
                            <th scope="row"><?php echo $urut++ ?></th>
                            <td scope="row"><?php echo $nama ?></td>
                            <td scope="row"><?php echo $nip ?></td>
                            <td scope="row"><?php echo $pangkat ?></td>
                            <td scope="row"><?php echo $golongan ?></td>
                            <td scope="row"><?php echo $jabatan ?></td>
                            <td scope="row"><?php echo $status ?></td>
                            <td scope="row"><?php echo $keterangan ?></td>
                            <td scope="row">
                                <a href="pegawai.php?op=edit&id=<?php echo $id ?>"><button type="button"
                                        class="btn btn-warning">Edit</button></a>
                                <a href="pegawai.php?op=delete&id=<?php echo $id ?>"
                                    onclick="return confirm('Yakin mau delete data?')"><button type="button"
                                        class="btn btn-danger" value="delete">Hapus</button></a>

                            </td>
                        </tr>
                        <?php
                        
                        }
                        ?>
                    </tbody>
                    </thead>
                </table>
                </form>
            </div>
            <div class="card">
            <div class="card-header">
                <h1>-</h1>
            </div>
        </div>
        <?php require_once 'footer.php'; ?>
        </div>
    </div>
</body>

</html>