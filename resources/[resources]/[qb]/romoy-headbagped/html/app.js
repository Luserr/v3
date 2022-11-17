window.onload = function () {
    display(false)
    console.log('Closed UI on resource load')
}

$(function () {
    function display(bool) {
        if(bool) {
            $('#deliveryinfo').show();
            $('#maininfo').show();
            $('#buttons').show();
        } else {
            $('#deliveryinfo').hide();
            $('#maininfo').hide();
            $('#buttons').hide();
        }
    };
    window.addEventListener('message', function(event) {
        let data = event.data
        if (data.type == 'open') {
            display(true)
        } else {
            if (data.type == 'close') {
                console.log('CLOSED')
                display(false)
            }
        }
        if (data.available == true) {
            document.getElementById('availability').textContent = data.info
        } else {
            if (data.info == nil) {
                document.getElementById('#maininfo').textContent = "Available" 
            }
        }
    }); 
    
    window.addEventListener('keyup', function(event) {
        if (event.isComposing || event.keyCode === 27) {
            $.post('https://romoy-headbagped/CloseUI', JSON.stringify({}));
            return;
        }
    });

    window.addEventListener('message', function(event) {
        let data = event.data
        if (data.timeout == true) {
            console.log('Message Received');
            startTimer(data.duration, document.querySelector('#time'))
        }
    });

    window.addEventListener('message', function(event) {
        let data = event.data
        if (data.info.action == 'update') {
            console.log(data.info.name)
        } if (data.info.number == 1) {
            document.getElementById('robbery1').textContent = data.info.name
            document.getElementById('type1').textContent = data.info.type
            document.getElementById('progress1').textContent = data.info.progress
            document.getElementById('status1').textContent = data.info.status
        } if (data.info.number == 2) {
            document.getElementById('robbery2').textContent = data.info.name
            document.getElementById('type2').textContent = data.info.type
            document.getElementById('progress2').textContent = data.info.progress
            document.getElementById('status2').textContent = data.info.status
        } if (data.info.number == 3) {
            document.getElementById('robbery3').textContent = data.info.name
            document.getElementById('type3').textContent = data.info.type
            document.getElementById('progress3').textContent = data.info.progress
            document.getElementById('status3').textContent = data.info.status
        }
    })

})

function display(bool) {
    if(bool) {
        $('#deliveryinfo').show();
        $('#maininfo').show();
        $('#buttons').show();
    } else {
        $('#deliveryinfo').hide();
        $('#maininfo').hide();
        $('#buttons').hide();
    }
};

$(document).on('click', '#yes', function() {    
    display(false) 
    $.post('https://romoy-headbagped/Accept', JSON.stringify({}));
    return;
});

$(document).on('click', '#deny', function() {
    display(false)
    $.post('https://romoy-headbagped/Cancel', JSON.stringify({}));
    return;
});

function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}