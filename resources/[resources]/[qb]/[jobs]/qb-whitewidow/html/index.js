//---------------------------\\
//------\\ CASE#1993 //------\\
//---------------------------\\

$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }
    display(false)
    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    // exit nui on key press -- key = ESC
    $(document).keyup(function (exit) {
        if (exit.keyCode === 27) {     
        closeMenu();      
        }      
    });
    function closeMenu() {
    $.post('https://boii-whitewidow/exit', JSON.stringify({}));   
    $("#container").hide(400);
    }
    $("#close").click(function () {
        $.post('https://boii-whitewidow/exit', JSON.stringify({}));
        return
    })
})


