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
const scripts_prac_4_dir = document.querySelector('#dir-scr-prct-4');
const scripts_4_dir = document.querySelector('#dir-scr-4');
const script_comm_lin_dir = document.querySelector('#dir-scr-comm-lin');

const generateFilesSCR = {
    "SCR3": () => {
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
    },
    "SCR4": () => {
        //Dir: scr4/*
        const scr4f = ["comp_val.sh","comp_val_2.sh","chkargs.sh","chkroot.sh","chkvarval.sh","sfiles.sh","redir.sh","cchains.sh","menu.sh","randnum.sh","listdir.sh","args.sh","listcsv.sh","rename.sh","lotes.sh","lPath.sh","username.sh","until.sh","brcon.sh","selmenu.sh","saluda.sh","vglobal.sh","vglobalfunc.sh","return.sh","factorial.sh","fibonacci.sh"];

        const dir_name = document.getElementById('dir-scr-4');

        for (x in scr4f) {
            const block = `
                <br>
                <div id="file" style="padding-left:15px; display:flex; vertical-align:middle;">
                    <i class="fa-regular fa-file" style="font-size:30px"></i>
                    <a href="./script-view/?dir=scr4&script=${scr4f[x]}"><h5 style="padding-left: 10px;">${scr4f[x]}</h5></a>
                    <a style="display:block; margin-right:20px; margin-left:auto;" href="https://github.com/INovomiast-IESFuengirola1/SCRBash/blob/main/Soluciones/Scripts_4/${scr4f[x]}" download="srcbash-${scr4f[x]}"><button type="button" class="btn btn-primary" style="display:block; margin-right:20px; margin-left:auto;"><i class="fa-solid fa-download"> Descargar</i></button></a>
                </div>
            `;

            const file_el = document.createElement('div');
            file_el.innerHTML = block;
            dir_name.append(file_el);

        }
    },
    "SCR_PRAC_4": () => {
        //Dir: scr_p_4/*
        const scrp4f = ["lecture.sh", "dir_exists.sh", "backup.sh", "copia.sh", "now_info.sh", "nlineas.sh", "multi.sh", "script_info.sh", "calc.sh"];

        const dir_name = document.getElementById('dir-scr-prct-4');

        for (x in scrp4f) {
            const block = `
                <br>
                <div id="file" style="padding-left:15px; display:flex; vertical-align:middle;">
                    <i class="fa-regular fa-file" style="font-size:30px"></i>
                    <a href="./script-view/?dir=scrP4&script=${scrp4f[x]}"><h5 style="padding-left: 10px;">${scrp4f[x]}</h5></a>
                    <a style="display:block; margin-right:20px; margin-left:auto;" href="https://github.com/INovomiast-IESFuengirola1/SCRBash/blob/main/Soluciones/Scripts_4/${scrp4f[x]}" download="srcbash-${scrp4f[x]}"><button type="button" class="btn btn-primary" style="display:block; margin-right:20px; margin-left:auto;"><i class="fa-solid fa-download"> Descargar</i></button></a>
                </div>
            `;

            const file_el = document.createElement('div');
            file_el.innerHTML = block;
            dir_name.append(file_el);

        }
    },
    "SCR_COM_LIN": () => {
        //Dir: scr_c_l
        const scrclf = "main.sh"

        const dir_name = document.getElementById('dir-scr-comm-lin');

        const block = `
        <br>
        <div id="file" style="padding-left:15px; display:flex; vertical-align:middle;">
            <i class="fa-regular fa-file" style="font-size:30px"></i>
            <a href="./script-view/?dir=scrCL&script=${scrclf}"><h5 style="padding-left: 10px;">${scrclf}</h5></a>
            <a style="display:block; margin-right:20px; margin-left:auto;" href="https://github.com/INovomiast-IESFuengirola1/SCRBash/blob/main/Soluciones/Scripts_4/${scrclf}" download="srcbash-${scrclf}"><button type="button" class="btn btn-primary" style="display:block; margin-right:20px; margin-left:auto;"><i class="fa-solid fa-download"> Descargar</i></button></a>
        </div>
        `;

        const file_el = document.createElement('div');
        file_el.innerHTML = block;
        dir_name.append(file_el);

    },
    "SCR_PRAC_3": () => {
        //Dir: scrp3f
        const scrp3f = ['reverse.sh', 'arg_error.sh', 'arg_error_else.sh', 'greaterthan.sh', 'chkgtlteq.sh', 'gtelsearit.sh', 'filedirchk.sh', 'pairs.sh', 'power.sh', 'divisionsubs.sh', 'secure.sh', 'check.sh', 'content.sh', 'switch-name.sh', 'more-info.sh', 'shw-exec.sh', 'shw-num.sh', 'exists.sh'];

        const dir_name = document.getElementById('dir-scr-prct-3');

        for (x in scrp3f) {
            const block = `
            <br>
            <div id="file" style="padding-left:15px; display:flex; vertical-align:middle;">
                <i class="fa-regular fa-file" style="font-size:30px"></i>
                <a href="./script-view/?dir=scrP3&script=${scrp3f[x]}"><h5 style="padding-left: 10px;">${scrp3f[x]}</h5></a>
                <a style="display:block; margin-right:20px; margin-left:auto;" href="https://github.com/INovomiast-IESFuengirola1/SCRBash/blob/main/Soluciones/Scripts_4/${scrp3f[x]}" download="srcbash-${scrp3f[x]}"><button type="button" class="btn btn-primary" style="display:block; margin-right:20px; margin-left:auto;"><i class="fa-solid fa-download"> Descargar</i></button></a>
            </div>
            `;
    
            const file_el = document.createElement('div');
            file_el.innerHTML = block;
            dir_name.append(file_el);
        }

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
}else if (directory == repo_content.SOLUCIONES[0].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item')
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_3   <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_3_dir.style.display = 'block';
    generateFilesSCR.SCR3();
}else if (directory == repo_content.SOLUCIONES[1].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_4  <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_4_dir.style.display = 'block';
    generateFilesSCR.SCR4();
}else if (directory == repo_content.SOLUCIONES[5].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_Practica_4  <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_prac_4_dir.style.display = 'block';
    generateFilesSCR.SCR_PRAC_4();
}else if (directory == repo_content.SOLUCIONES[6].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Script_Comandos_Linux  <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    script_comm_lin_dir.style.display = 'block';
    generateFilesSCR.SCR_COM_LIN();
}else if (directory == repo_content.SOLUCIONES[4].dir_id) {
    const dir_nav_el = document.createElement('li');
    dir_nav_el.classList.add('breadcrumb-item');
    dir_nav_el.classList.add('active');
    dir_nav_el.innerHTML = 'Soluciones  <b>/</b>  Scripts_Practica_3  <b>/</b>';
    dir_nav.append(dir_nav_el);
    home_dir.style.display = 'none';
    scripts_prac_3_dir.style.display = 'block';
    generateFilesSCR.SCR_PRAC_3();
}