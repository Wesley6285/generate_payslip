<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Password</title>
<link rel="stylesheet" href="styles.css" />
<h1>Forgot Password</h1>
</head>
<body>
	<style>
body {
	background-color: red;
	color: white;
}

.box {
	width: 100%;
	letter-spacing: 2px;
}

.btn {
	background-color: blue;
	width: 30%;
}

.btc {
	width: 100%;
}

.btc:hover {
	background-color: white;
	color: green;
	opacity: 0.8;
	cursor: pointer;
}

.btn:hover {
	color: blue;
}
</style>
	<div class="conatiner">
		<form action="forgotpass" method="post">
			<div class="box">
				<label>Enter Email <input type="text" name="f1"
					pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
					autocomplete="disable" spellcheck="false" required />
				</label> <label>Create New Password <input type="password" name="f2"
					id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					autocomplete="disable" required />
				</label> <span class="password-strength"></span> <label>Retype
					Password <input type="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					autocomplete="disable" required />
				</label>
				<div class="move">
					<button class="btn" type="submit">Change Password</button>
					<a href="login.jsp"><button class="btc" type="button">Login</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
<script src="script.js"></script>
</html>