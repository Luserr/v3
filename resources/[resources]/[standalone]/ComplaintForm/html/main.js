// OpenForm() = function() {
//     $('#root').show();
// }

$(document).ready(function(){
    window.addEventListener('message', function(event){
        let eData = event.data;
        switch(eData.action){
            case 'open-from':
                $('#root').show();
        }
    })
})

$(document).on('click', '.submit-btn', function(){
    let retval = false;
    $(`input[type="text"]`).each(function() {
        if (this.value == "") {
            retval = true;
            $(this).css({"border":"1px solid red"})
        }
    });
    $(`input[type="number"]`).each(function(){
        if(this.value == "") {
            retval = true;
            $(this).css({"border":"1px solid red"})
        }
    })
    $(`input[type="date"]`).each(function(){
        if(this.value == "") {
            retval = true;
            $(this).css({"border":"1px solid red"})
        }
    })
    if($("textarea").val() == "") {
        retval = true;
        $("textarea").css({"border":"1px solid red"})
    }

    if(!retval && $(".my-form textarea").value != ""){
        $(".complaint-container").slideUp();
        let inputVal = {
            name : $("#name").val(),
            date : $("#date").val(),
            phone : $("#phone").val(),
            lastName : $("#lastName").val(),
            complaint : $("#complaint").val(),
        }
        $.post(`https://${GetParentResourceName()}/send`,JSON.stringify({
            data : inputVal
        }));
        $('#root').hide();
        restartInputs();
    }
})

$(document).keyup(function (e){
    if (e.keyCode == 27) {
        $("#root").hide();
        $.post(`https://${GetParentResourceName()}/close`,JSON.stringify({}))
    }
});

function restartInputs(){
    $("#name").val("")
    $("#date").val("")
    $("#phone").val("")
    $("#lastName").val("")
    $("#complaint").val("")
    $(`input[type="text"]`).each(function() {
        $(this).css({"border":"none"})
    });
    $("textarea").css({"border":"none"})
    $(`input[type="number"]`).each(function(){
        $(this).css({"border":"none"})
    })
    $(`input[type="date"]`).each(function(){
        $(this).css({"border":"none"})
    })
}