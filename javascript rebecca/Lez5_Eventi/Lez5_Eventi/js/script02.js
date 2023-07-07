let formLogin = document.querySelector("#formLogin");


function login(){
    let username = document.querySelector("#username");
    let password = document.querySelector("#password");

    if(username == ""){
        event.preventDefault(); //cosi si bloccano i form
    }
    let user = username.value;

    let userJSON = JSON.stringify(user);

        localStorage.setItem("user", userJSON);

    let psw = password.value;

    let pswJSON = JSON.stringify(psw);

        localStorage.setItem("psw", pswJSON);

}

formLogin.addEventListener("submit", login);


