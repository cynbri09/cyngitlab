<?php 
    session_start(); 

    //jika belum login, alihkan ke login
    if (empty($_SESSION['user'])) {
        header('Location: login.php');
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Daftar Petugas</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">OnLib</a>
    </div>
    <ul class="nav navbar-nav">
			<li ><a href="modul_kategori/list-kategori.php">Data Kategori</a></li>
                <li><a href="modul_buku/list-buku.php">Data Buku</a></li>
                <li><a href="modul_anggota/list-anggota.php">Data Anggota</a></li>
                <li><a href="modul_peminjaman/pinjam-data.php">Peminjaman</a></li>
                <li><a href="modul_pengembalian/list-pengembalian.php">Pengembalian</a></li>
				<form class="navbar-form navbar-left" action="/action_page.php">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search" name="search">
						<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>

				</form>
			
    </ul>
	<ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <?php echo $_SESSION['user']['petugas_nama']; ?></a></li>
      <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
	
  </div>
</nav>
    <div class="container-fluid">


           <ul> 
                
            </ul>
        </div>
       
    </div>

</body>
</html>
