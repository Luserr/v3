window.addEventListener('message', (event) => {
    const data = event.data;
    

    if (data.type === 'vitals') {
        document.getElementById('machine').style.display = "block"
        document.getElementById('name-output').textContent = data.name.substring(0, 20)
        document.getElementById('hr-output').textContent = data.hr
        document.getElementById('sbp-output').textContent = data.sbp
        document.getElementById('dbp-output').textContent = data.dbp
        document.getElementById('map-output').textContent = Math.floor((data.sbp + (2 * data.dbp)) / 3)
        document.getElementById('rr-output').textContent = data.rr
        document.getElementById('po2-output').textContent = data.po2
    }
    
    if (data.type === 'close') {
        document.getElementById('machine').style.display = "none"
    }
});

