function panelmoduser(){
  $.ajax({
    type: 'get',
    url: 'panelmoduser.php',
    data: "",
    datatype: "html",
    success: function(datahtml){
      $("#panelmod").html(datahtml);
    },
    error: function(){
      $("#panelmod").html("<div>Error al cargar</div>");
    }
  });    
}
function panelmodprod(){
  $.ajax({
    type: 'get',
    url: 'panelmodprod.php',
    data: "",
    datatype: "html",
    success: function(datahtml){
      $("#panelmod").html(datahtml);
    },
    error: function(){
      $("#panelmod").html("<div>Error al cargar</div>");
    }
  })
};
function panelmodped(){
  $.ajax({
    type: 'get',
    url: 'panelmodped.php',
    data: "",
    datatype: "html",
    success: function(datahtml){
      $("#panelmod").html(datahtml);
    },
    error: function(){
      $("#panelmod").html("<div>Error al cargar</div>");
    }
  })
};