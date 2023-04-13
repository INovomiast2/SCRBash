/**
 * scripthandle.js - GH Raw Data Handler.
 */

const qString = window.location.search;
const URLParams = new URLSearchParams(qString);

const script = URLParams.get('script');
const dir = URLParams.get('dir');

//Avaliable Dirs to work with
const dirs = ['scr3', 'scr4', 'scrAS', 'scrPT', 'scrP3', 'scrP4'];

//Dir: scr3/*
const scr3f = ["holamundo.sh","atributos.sh","suma.sh","mayusculas.sh","matrices.sh","let.sh","exp-ari-nlet.sh","reales.sh","aritmeticas.sh","bases.sh","operadores-fechas.sh","operadores-comp.sh","ccadenas.sh","combexps.sh","capuser.sh","infous.sh"];

//Dir: scr4/*
const scr4f = ["comp_val.sh","comp_val_2.sh","chkargs.sh","chkroot.sh","chkvarval.sh","sfiles.sh","redir.sh","cchains.sh","menu.sh","randnum.sh","listdir.sh","args.sh","listcsv.sh","rename.sh","lotes.sh","lPath.sh","username.sh","until.sh","brcon.sh","selmenu.sh","saluda.sh","vglobal.sh","vglobalfunc.sh","return.sh","factorial.sh","fibonacci.sh"];

//Dir: scrAS/*
const scrASf = ["defaultuser.sh","groupuser.sh","expireuser.sh","userexists.sh","groupexists.sh","uptime.sh","connect.sh","connections.txt","sshe.sh","simpleftp.sh","mftp.sh","backupftp.sh"];

//Dir: scrPT/*
const scrPTf = ['cache.sh'];

//Dir: scrP3/*
const scrP3f = ["reverse.sh","arg_error.sh","arg_error_else.sh","greaterthan.sh","chkgtlteq.sh","gtelsearit.sh","filedirchk.sh","pairs.sh","power.sh","divisionsubs.sh"];

//Dir scrP4/*
const scrP4f = ["lecture.sh", "dir_exists.sh", "backup.sh", "copia.sh", "now_info.sh", "nlineas.sh", "multi.sh", "script_info.sh", "calc.sh"];



if (dir == dirs[0]) {
    for (x in scr3f) {
        if (script == scr3f[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_3/${script}`);
        }
    }
} else if (dir == dirs[1]) {
    for (x in scr4f) {
        if (script == scr4f[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_4/${script}`);
        }
    }
} else if (dir == dirs[2]) {
    for (x in scrASf) {
        if (script == scrASf[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_Administracion_Sistema/${script}`);
        }
    }
} else if (dir == dirs[3]) {
    for (x in scrPTf) {
        if (script == scrPTf[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_Programacion_Tareas/${script}`);
        }
    }
} else if (dir == dirs[3]) {
    for (x in scrP3f) {
        if (script == scrP3f[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_Practica_3/${script}`);
        }
    }
} else if (dir == dirs[5]) {
    for (x in scrP4f) {
        if (script == scrP4f[x]) {
            getGitHubScript(`https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_Practica_4/${script}`);
        }
    }
}

//Extra: Go Back Button

const gb_btn = document.querySelector('#goback-btn');

gb_btn.addEventListener('click', () => {
    if (dir == dirs[0]) {
        window.location.href = `../?dir=${repo_content.SOLUCIONES[0].dir_id}`;
    }else if (dir == dirs[1]) {
        window.location.href = `../?dir=${repo_content.SOLUCIONES[1].dir_id}`;
    }else if (dir == dirs[2]) {
        window.location.href = `../?dir=${repo_content.SOLUCIONES[2].dir_id}`;
    }else if (dir == dirs[5]) {
        window.location.href = `../?dir=${repo_content.SOLUCIONES[5].dir_id}`;
    }
});