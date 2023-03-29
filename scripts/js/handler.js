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
const scripts_prac_3_dir = document.querySelector('#dir-scr-prct-3');

function generateFilesSCR3() {
    //Dir: scr3/*
    const scr3f = ["holamundo.sh","atributos.sh","suma.sh","mayusculas.sh","matrices.sh","let.sh","exp-ari-nlet.sh","reales.sh","aritmeticas.sh","bases.sh","operadores-fechas.sh","operadores-comp.sh","ccadenas.sh","combexps.sh","capuser.sh","infous.sh"];

    const dir_name = document.getElementById('dir-scr-3');

    for (x in scr3f) {
        const block = `
            <br>
            <div id="file" style="padding-left:15px; display:flex; vertical-align:middle;">
                <i class="fa-regular fa-file" style="font-size:30px"></i>
                <a href="./script-view/?dir=scr3&script=${scr3f[x]}"><h5 style="padding-left: 10px;">${scr3f[x]}</h5></a>
                <a style="display:block; margin-right:20px; margin-left:auto;" href="https://github.com/INovomiast-IESFuengirola1/SCRBash/blob/main/Soluciones/Scripts_3/${scr3f[x]}" download="srcbash-${scr3f[x]}"><button type="button" class="btn btn-primary" style="display:block; margin-right:20px; margin-left:auto;"><i class="fa-solid fa-download"> Descargar</i></button></a>
            </div>
        `;

        const file_el = document.createElement('div');
        file_el.innerHTML = block;
        dir_name.append(file_el);

    }
}

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
    generateFilesSCR3();
}

if (directory == repo_content.SOLUCIONES[4].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_Practica_3  <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_prac_3_dir.style.display = 'block';
}