let formLogin = document.querySelector("#formLogin");


function login(){
    let username = document.querySelector("#username");
    let password = document.querySelector("#password");
    let checkBox = document.querySelector("#checkRestaConn");

    if(username == ""){
        event.preventDefault(); //cosi si bloccano i form
    }
    let user = username.value;
    let psw = password.value;

    let userJSON = JSON.stringify(user);
    let pswJSON = JSON.stringify(psw);
    

    if (checkBox.checked == true){
            localStorage.setItem("user", userJSON);
            localStorage.setItem("psw", pswJSON);  

    }
}

let btnLogout = document.querySelector("#btnLogout");

function logout(){
    localStorage.removeItem("user");
    localStorage.removeItem("psw");
    

}


formLogin.addEventListener("submit", login);
btnLogout.addEventListener("click", logout);





