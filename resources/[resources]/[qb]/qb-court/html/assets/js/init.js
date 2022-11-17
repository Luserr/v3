const open = (data) => {
  $('#name').css('color', '#FFFFFF');
  $('#barid').css('color', '#FFFFFF');
  $('#date').css('color', '#FFFFFF');

  $('#name').text(data.name);
  $('#barid').text(data.barid);
  $('#date').text(data.date);


  $('#id-card').css('background', 'url(assets/images/lawyer.png)');

  $('#id-card').show();
}

const close = () => {
  $('#name').text('');
  $('#barid').text('');
  $('#date').text('');
  $('#id-card').hide();
  $('#licenses').html('');
}

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case "open":
                open(event.data);
                break;
            case "close":
                close();
                break;
        }
    })
});
