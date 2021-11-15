$(function(){
    $("#button").bind("click",function(){

    var abc
    abc = $("#manufacturing_company").val();
    re = new RegExp(abc);

        $("#data tbody tr").each(function(){
            var txt = $(this).find("td").text();

              if(txt.match(re) != null){
                  $(this).show();
              }else{
                  $(this).hide();
            }
        });
    });

    $("#button2").bind("click",function(){
        $("#data tr").show();
    });
});