$(function() {
    window.addEventListener('message', function(event) {
        if (event.data.type === "SendInfo"){
            $('.MainClass').slideDown("slow");
            $('.MainClass').css({"display":"flex"});
            $('.MainClass').fadeIn(500);
            $('#Button').html(event.data.ButtonKey);
            $('#UIText').html(event.data.Text);
        } else if(event.data.type === "CloseUI") {
            $('.MainClass').slideUp("slow");
            setTimeout(() => {
                $('.MainClass').slideUp("slow");
                $('.MainClass').hide();
            }, 1000);
        }
    });
});

