$(function () {
    var dia = new Date();
    var hora = dia.getHours();
    console.log(hora);
    if(hora > 6 && hora < 22){
        $("#toast-icon").addClass("fas fa-sun fa-lg");
        $("#toast-icon").addClass("text-warning");
        $("#toast-mssg").html("buenos dias!");
        $("#liveToast").toast('show');
    }else{
        $("#toast-icon").addClass("fas fa-moon fa-lg");
        $("#toast-icon").addClass("text-info");
        $("#toast-mssg").html("buenas noches!");
        $("#liveToast").toast('show');
    }
    
});

function abrirDetalles(des){
    $("#desc").html(des);
}

function mostrarStock(id){
    //$("#"+id).html("Stock disponible: "+id);
}

function quitarStock(id){
    //$("#"+id).html("&nbsp;");
}