function getGitHubScript(url) {
    fetch(url)
    .then(res => res.text())
    .then((out) => {
        document.getElementById("display-code").innerText = out;
    })
    .catch(err => { throw err });
}

//getGitHubScript('https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash/main/Soluciones/Scripts_3/aritmeticas.sh')