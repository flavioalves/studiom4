$(document)
  .ready(function () {
    $('.cpf-mask').mask('999.999.999-99');
  });
$(document).on('ajax:success', '.new_studant', function (e, data) {
  if (data.status == 'arquitetura-na-pratica') {
    alert(data.message);
    document.getElementById("pagseguro-arquitetura-na-pratica").click();
  }
  else if (data.status == 'pacote') {
    alert(data.message);
    document.getElementById("pagseguro-pacote").click();
  }
  else if (data.status == 'ex-aluno-iluminacao') {
    alert(data.message);
    document.getElementById("close-modal").click();
  }
});
