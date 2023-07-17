let formLogin = document.querySelector("#formLogin");
let demo = document.querySelector("#demo");

function Utente(username, password, conn) {
  this.username = username;
  this.password = password;
  this.conn = conn;
}

function login() {
  let username = document.querySelector("#username").value;
  let password = document.querySelector("#password").value;
  let checkBox = document.querySelector("#checkRestaConn");

  let usernameUtente = "";
  let passwordUtente = "";
  let connUtente = false;

  if (username.trim() == "") {
    event.preventDefault(); //cosi si bloccano i form
    demo.innerHTML += "Hai dimenticato lo username";
  }else{
    usernameUtente = username;
  }

  if (password.trim() == "") {
    event.preventDefault();
    demo.innerHTML += "Hai dimenticato la password";
  }else{
    passwordUtente=password;
  }

  if (conn.checked == true) { //checkbox.checked == true
    connUtente = true;

    // localStorage.setItem("username", userJSON);
    // localStorage.setItem("password", pswJSON);
  }

  if (usernameUtente != "" && passwordUtente != "" && connUtente == true){
    let mioUtente = new Utente(usernameUtente, passwordUtente, connUtente)

    localStorage.setItem("utente", JSON.stringify(mioUtente));
  }

  // let userJSON = JSON.stringify(username);
  // let pswJSON = JSON.stringify(password);

 
}

// let btnLogout = document.querySelector("#btnLogout");

// function logout() {
//   localStorage.removeItem("username");
//   localStorage.removeItem("password");
// }

formLogin.addEventListener("submit", login);
// btnLogout.addEventListener("click", logout);
