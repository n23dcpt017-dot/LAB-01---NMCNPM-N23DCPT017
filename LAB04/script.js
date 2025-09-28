document.getElementById("loginForm").addEventListener("submit", function(event) {
  event.preventDefault(); // Ngăn reload trang

  let username = document.getElementById("username").value.trim();
  let password = document.getElementById("password").value.trim();
  let message = document.getElementById("message");

  if (username === "" || password === "") {
    message.textContent = "Vui lòng nhập đầy đủ Username và Password!";
    return;
  }

  // Kiểm tra đơn giản
  if (username === "admin" && password === "123456") {
    message.style.color = "green";
    message.textContent = "Đăng nhập thành công!";
  } else {
    message.style.color = "red";
    message.textContent = "Sai Username hoặc Password!";
  }
});

function cancelLogin() {
  document.getElementById("loginForm").reset();
  document.getElementById("message").textContent = "";
}
