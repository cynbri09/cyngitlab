<?php

session_start();

// jika sudah login, alihkan ke halaman list
if (isset($_SESSION['user'])) {
    header('Location: home.php');
    exit();
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign In</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<form method="post" name="form_login" id="form_login" action="proses-login.php" style="margin-top: 100px;">
	  <div class="container">
	  <h1>Sign In</h1>
		<p>Please fill in this form to create an account.</p>
		<hr>
		<table class="form">
			 <label for="email"><b>Username</b></label>
			<input type="text" name="username" id="username" required />
		
			<label for="psw"><b>Password</b></label>
			<input type="password" name="password" id="password" />
			
			<p>Not a member? <a href="signup.php" style="color:dodgerblue">Register</a></p>
			 <div class="clearfix">
				<input type="submit" name="login" id="login" value="Login" class="button" />
			</div>
		</table>
	</form>
	
</body>
</html>
