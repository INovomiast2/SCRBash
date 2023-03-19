/**
 * handler.js (Manages dirs by URL Args)
 */



const queryString = window.location.search;
const URLParams = new URLSearchParams(queryString);

const directory = URLParams.get('dir');

const dir_nav = document.querySelector('#bdc-nav');

// function createBreadcrumb() {
//     var names = [];
//     names.forEach(function(el) {
        
//     });
// }

//Directorys
const home_dir = document.querySelector('#dir-home');
const soluciones_dir = document.querySelector('#dir-soluciones');
const scripts_3_dir = document.querySelector('#dir-scr-3');


if (directory == repo_content.HOME[2].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    soluciones_dir.style.display = 'block';
}

if (directory == repo_content.SOLUCIONES[0].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item')
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_3   <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_3_dir.style.display = 'block';
}
