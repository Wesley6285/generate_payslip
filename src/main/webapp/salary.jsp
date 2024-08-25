<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Youngster-Develop-India.Pvt.Ltd👨</title>
<link rel="stylesheet" href="styles.css">
<div id="preloader">
    <l-tail-chase size="80" speed="1.75" color="white"></l-tail-chase>
</div>
<h1 style="color:red" align="center">Employee Salary</h1>
</head>
<body>
<style>
body{
background-image:url("https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80");
margin:0px;
padding:0px;
box-sizing:border-box;
width:100%;
height:100vh;
background-size:cover;
background-position:center;
background-repeat:no-repeat;
overflow: hidden;
}
.btn{
width: 120px;
}
</style>
<form action="salarycalc" method="post">
<table align="left" cellspacing="12">
<tr><td><h3>Name</h3></td><td><input type="text" name="b1" required></td></tr>
<tr><td><h3>Employee code</h3></td><td><input type="text" name="b2" required></td></tr>
<tr><td><h3>Email</h3></td><td><input type="text" name="b3" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" autocomplete="disabled" required>
</td></tr>
<tr><td><h3>Location</h3></td><td><input list="Location" id="Location" name="g2" required></td></tr>
<datalist id="Location">
<option value="Chennai"></option>
<option value="Madurai"></option>
<option value="Coimbatore"></option>
<option value="Thirunelveli"></option>
<option value="Outer-TamilNadu"></option>
</datalist>
<tr><td><h3>Designation</h3></td><td><input list="subjects" id="subjects" name="g1" required></td></tr>
<datalist id="subjects">
<option value="Database Adminstrator"></option>
<option value="Junior Java Developer"></option>
<option value="Senior Java Developer"></option>
<option value="Web Developer"></option>
<option value="Python Developer"></option>
<option value="Client Manager"></option>
</datalist>
<tr><td><h3>Enter the Month</h3></td><td><input type="text"  name="month" required></td></tr>
<tr><td><h3>Gross Pay</h3></td><td><input type="text"  name="pay" required></td></tr>
<tr><td><button type="submit" class="btn">Generate</button></td></tr>
</table>
</form>
</body>
<script type="module" src="https://cdn.jsdelivr.net/npm/ldrs/dist/auto/tailChase.js"></script>
<script>
    let animate=document.getElementById("preloader")
    window.addEventListener("load",function(){
    animate.style.display="none";
})
</script>
</html>

