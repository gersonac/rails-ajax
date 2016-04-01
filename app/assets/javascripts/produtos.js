//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  // evento change
  $('#produto_grupo_id').bind('change', function() {
    var grupo_id = "";

    // pega o valor escolhido no combo
    grupo_id = $('#produto_grupo_id').val();

    if (grupo_id != "") {
      // get para o ccontroler retornar o json com o novo código do produto
      $.get("/produtos/max_prod/" + grupo_id, function(data) {
        $('#produto_codigo').val(data);
      });
    }
  });
});
