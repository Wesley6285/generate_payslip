<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Create Account</title>
<link rel="stylesheet" href="styles.css">
<h1>Create Account</h1>
</head>
<body>
<style>
bodY {
	margin: 10px;
	background-color:rgba(27, 27, 135, 0.905);
	color: white;
}	

h1 {
	text-align: justify;
	color: white;
}

.box {
	display: grid;
	box-shadow: 6px -6px 9px palevioletred,-6px 6px 9px palevioletred;
	letter-spacing:2px;
	row-gap: 20px;
}

.btn {
	width: 50%;
}
</style>
	<div class="container">
		<form action="newuser" method="post">
		<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
			<div class="box">
				 <label> Enter Name <input type="text" name="c1"
					autocomplete="disable" required />
				</label>
				 <label> Enter Email <input type="text"
					name="c2" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
					autocomplete="disable" spellcheck="false" required />
				</label>
				<label>
					Enter Contact No <input type="text"
					name="c3" pattern="[0-9]{10}" autocomplete="disable" required />
				</label>
				 <label> Create Password <input
					type="password" id="password" name="c4"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					autocomplete="disable" required />
				</label>
				<div class="password-strength"></div> 
				 <label>Retype Password <input
					type="password" id="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					autocomplete="disable" required />
				</label>
				<button class="btn" type="submit">Create</button>
			</div>
		</form>
	</div>
</body>
<script src="script.js"></script>
</html>