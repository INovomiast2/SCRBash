/**
 * ./scripts/_js/loader.js
 */
//Loader Script v.1.0
//Dev: INovomiast-IESFuengirola1

//Declare all variables with the elements on screen for the loader

//Modal
const lmodal = document.querySelector('#loading-modal');

//Main Content
const mcontent = document.querySelector('#main-content');

//Loader li
const lml_f = document.querySelector('#lm-load-f');
const lml_s = document.querySelector('#lm-load-s');
const lml_t = document.querySelector('#lm-load-t');
const lml_fo = document.querySelector('#lm-load-fo');
const lml_fi = document.querySelector('#lm-load-fi');

//Loader Spinner
const lml_f_sp = document.querySelector('#lm-load-f-spn');
const lml_s_sp = document.querySelector('#lm-load-s-spn');
const lml_t_sp = document.querySelector('#lm-load-t-spn');
const lml_fo_sp = document.querySelector('#lm-load-fo-spn');
const lml_fi_sp = document.querySelector('#lm-load-fi-spn');

//Loader ChkMark
const lml_f_chk = document.querySelector('#lm-load-f-chk');
const lml_s_chk = document.querySelector('#lm-load-s-chk');
const lml_t_chk = document.querySelector('#lm-load-t-chk');
const lml_fo_chk = document.querySelector('#lm-load-fo-chk');
const lml_fi_chk = document.querySelector('#lm-load-fi-chk');

//On page load: Open Modal and start loading Proccess!
document.body.onload = () => {
    mcontent.style.display = 'none';
    lmodal.style.display = 'flex';
    lml_f.style.display = 'block';
    lml_s.style.display = 'none';
    lml_t.style.display = 'none';
    lml_fo.style.display = 'none';
    lml_fi.style.display = 'none';
    setTimeout(() => {
        lml_f_sp.style.display = 'none';
        lml_f_chk.style.display = 'inline-block'
        lml_s.style.display = 'block';
        setTimeout(() => {
            lml_s_sp.style.display = 'none';
            lml_s_chk.style.display = 'inline-block'
            lml_t.style.display = 'block';
            setTimeout(() => {
                lml_t_sp.style.display = 'none';
                lml_t_chk.style.display = 'inline-block';
                lml_fo.style.display = 'block';
                setTimeout(() => {
                    lml_fo_sp.style.display = 'none';
                    lml_fo_chk.style.display = 'inline-block';
                    lml_fi.style.display = 'block';
                    setTimeout(() => {
                        lml_fi_sp.style.display = 'none';
                        lml_fi_chk.style.display = 'inline-block';
                        //Destroy modal and show main main contain
                        lmodal.style.display = 'none';
                        mcontent.style.display = 'block';
                        lmodal.remove();
                    }, 5000);
                }, Math.random() * (4700 - 2500 + 1)+ 2500);
            }, Math.random() * (4700 - 2500 + 1)+ 2500);
        }, 5000);
    }, 3000);
}