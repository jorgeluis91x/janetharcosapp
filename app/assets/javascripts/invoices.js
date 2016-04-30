$(document).ready(function(){

  $(".select").click(function(){
      var id = $(this).attr("data-id");
      $.ajax({
                url: '/clients/'+id+'.json',
                //contentType: "application/json; charset=utf-8",
                success: function(data) {
                        $("#invoice_client_id").val(data.id);
                        $("#identification").val(data.identification);
                        $("#name").val(data.name);
                }});

    $('#select_client_modal').modal('hide');
      
  })
})