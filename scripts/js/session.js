/**
 * session.js
 * 
 * Creates a Cookie with a uid, to speed
 * up the loading process and other details
 * 
 */

//Get Date Parameters:
const date = new Date();

//Generate Session UID: 
function uuidv4() {
    return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, c => (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16));
}

//Get Cookie
function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
}

if (getCookie('session') != "") {
    //pass
}

function genSession() {
  document.cookie = "session=" + uuidv4() + "; path=/";
}

document.querySelector('#del-cookie').addEventListener('click', () => {
  document.cookie = 'session=; Max-age=0; path=../scripts/index.html; domain=' + location.hostname;
  alert(document.cookie);
});