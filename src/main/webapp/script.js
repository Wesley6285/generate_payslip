let passwordInput = document.getElementById("password");
let passwordStrength = document.querySelector(".password-strength");
passwordInput.addEventListener("input", function () {
  const password = passwordInput.value;
  if (password.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/)) {
    passwordStrength.textContent = "Strong password";
    passwordStrength.style.color = "green";
  } else if (password.match(/^(?=.*\d)(?=.*[a-z]).{6,}$/)) {
    passwordStrength.textContent = "Moderate password";
    passwordStrength.style.color = "orange";
  } else {
    passwordStrength.textContent = "Weak password";
    passwordStrength.style.color = "red";
  }
});