
function validatePassword(){
var password = document.getElementById("password");
var confirm_password = document.getElementById("pass1");
    if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
    }
    else {    
    store();
    alert("we have stored some of your data in local and session storage");
    confirm_password.setCustomValidity('strong password!!');
    }
}

function store(){ //stores items in the localStorage
  var fname = document.getElementById('fname').value;
  var lname = document.getElementById('lname').value;
  //var user = document.getElementById('user').value;
  var key = "course"

  const localStore = {
      fname: fname,
      lname: lname,
  }

  window.localStorage.setItem(key,JSON.stringify(localStore));  
  //converting object to string

  var email = document.getElementById('email').value;
  var address = document.getElementById('address').value;

  const ssnStore = {
      email: email,
      address: address
  }
  
  window.sessionStorage.setItem('ssnStore',JSON.stringify(ssnStore));  
  //converting object to string
  

}

