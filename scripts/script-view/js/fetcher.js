function getGitHubScript(url) {
    fetch(url)
    .then(res => res.text())
    .then((out) => {
        document.getElementById("display-code").innerText = out;
    })
    .catch(err => { throw err });
}

<<<<<<< HEAD
=======
//getGitHubScript('https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_3/aritmeticas.sh')
>>>>>>> 0876ac7cbd1a78c5f0942b303f2b9cb325f9dd1a
