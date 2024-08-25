<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Welcome</title>
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="sweetalert2.min.css" />
    <div id="preloader">
      <l-tail-chase size="80" speed="1.75" color="white"></l-tail-chase>
    </div>
    <h1>Login</h1>
  </head>
  <body>
    <style>
      body{
        background-color:blue;
        background-image: linear-gradient(to right,blue,red);
      }
      .btn,
      .btc {
        width: 100%;
      }
      #check {
        width: 20px;
        height: 20px;
        accent-color: red;
        border: none;
        border-radius: 10%;
        box-shadow: none;
      }
      .box {
        width: 40%;
        border: none;
        color: white;
        background-color: rgba(18, 15, 15, 0.458);
      }
      .animation {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 30px;
      }
    </style>
    <input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
    <form action="logincheck" method="post">
      <div class="conatiner">
        <div class="box">
            <input
            type="text"
            placeholder="Email"
            name="l1"
            pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
            autocomplete="disabled"
            spellcheck="false"
            required
          />     
          <input
            type="password"
            placeholder="Password"
            id="pwd"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
            name="l2"
            autocomplete="disabled"
            required
          />
          <div><input type="checkbox" id="check" /> Show Passowrd</div>
          <span class="error"></span>
          <button type="submit" class="btn">Login</button>
          <a href="forgotpassword.jsp">forgot password </a>
          <div class="animation">
            <l-newtons-cradle
              size="80"
              speed="1.4"
              color="white"
            ></l-newtons-cradle>
          </div>
          <a href="newuser.jsp"
            ><button type="button" class="btc">Create</button></a
          >
        </div>
      </div>
    </form>
  </body>
  <script
    type="module"
    src="https://cdn.jsdelivr.net/npm/ldrs/dist/auto/newtonsCradle.js"
  ></script>
  <script type="module" src="https://cdn.jsdelivr.net/npm/ldrs/dist/auto/tailChase.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script>
        let animate = document.getElementById("preloader");
    window.addEventListener("load", function () {
      animate.style.display = "none";
    });
    
    let check = document.getElementById("status").value;
    if (check == "failed") {
      swal.fire("failed", "Dont have an Account", "error");
    }
    let show = document.getElementById("pwd");
    let checkbox = document.getElementById("check");
    checkbox.onchange = function (e) {
      show.type = checkbox.checked ? "text" : "password";
    };
  </script>
</html>
