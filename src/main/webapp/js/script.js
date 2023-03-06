function checkPassword() {
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirm_password").value;
    console.log(password, confirmPassword);
    let message = document.getElementById("message");
    if (password.length != 0) {
        if (password == confirmPassword) {
            message.textContent = "Password match";
        }
        else {
            message.textContent = "Password not match!"
            message.style.color = "#c0392b"
        }
    }
}