function getGitHubScript(url) {
    fetch(url)
    .then(res => res.text())
    .then((out) => {
        document.getElementById("display-code").innerText = out;
    })
    .catch(err => { throw err });
}

