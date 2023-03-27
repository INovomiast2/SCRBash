/**
 * scripthandle.js - GH Raw Data Handler.
 */

const qString = window.location.search;
const URLParams = new URLSearchParams(qString);

const script = URLParams.get('script');
const dir = URLParams.get('dir');

//Avaliable Dirs to work with
const dirs = ['scr3', 'scr4', 'scrAS', 'scrPT', 'scrP3'];

//Dir: scr3/*
const scr3f = ["holamundo.sh","atributos.sh","suma.sh","mayusculas.sh","matrices.sh","let.sh","exp-ari-nlet.sh","reales.sh","aritmeticas.sh","bases.sh","operadores-fechas.sh","operadores-comp.sh","ccadenas.sh","combexps.sh","capuser.sh","infous.sh"];

//Dir: scr4/*
const scr4f = ["comp_val.sh","comp_val_2.sh","chkargs.sh","chkroot.sh","chkvarval.sh","sfiles.sh","redir.sh","cchains.sh","menu.sh","randnum.sh","listdir.sh","args.sh","listcsv.sh","rename.sh","lotes.sh","lPath.sh","username.sh","until.sh","brcon.sh","selmenu.sh","saluda.sh","vglobal.sh","vglobalfunc.sh","return.sh","factorial.sh","fibonacci.sh"];

//Dir: scrAS/*
const scrASf = ["defaultuser.sh","groupuser.sh","expireuser.sh","userexists.sh","groupexists.sh","uptime.sh","connect.sh","connections.txt","sshe.sh","simpleftp.sh","mftp.sh","backupftp.sh"];

//Dir: scrPT/*
const scrPTf = ['cache.sh'];

//Dir: scrP3/*
const scrP3 = ["reverse.sh","arg_error.sh","arg_error_else.sh","greaterthan.sh","chkgtlteq.sh","gtelsearit.sh","filedirchk.sh","pairs.sh","power.sh","divisionsubs.sh"];




if (dir == dirs[0]) {
    for (x in scr3f) {
        console.log(x);
    }
}