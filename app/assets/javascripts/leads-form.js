if($('.landing-arquitetura-na-pratica') && $('.landing-arquitetura-na-pratica').length > 0){

  $("#lead-form-submit").on('click',function() {

    if($('#inputName').val().length <= 2 || $('#inputEmail').val().length <= 5){
      alert("Por favor, informe seu nome e email corretamente.");
    }

    $contact_form = $('#lead-form');
    var fields = $contact_form.serialize();
    $.ajax({
      type: "POST",
      url: "/leads/new",
      data: fields,
      dataType: 'json',
      success: function(response) {

        if(response.status){
          $('#lead-form input').val('');
        }
        alert("Mensagem enviada com sucesso!");
        //$('#response').empty().html(response.html);
      }
    });
    return false;
  });


}
