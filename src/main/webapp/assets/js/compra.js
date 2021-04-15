$(function() {
    obtenerEstados();
});

//Obtener Estados
function obtenerEstados() {
    $.ajax({
        type: "GET",
        "url": base_url + "DaoEstados",
        dataType: "json",
        success: function (data) {
            console.log(data);
//            for (let i = 0; i < data.data.length; i++) {
//                $("#estado").append('<option value="' + data.data[i].idEstado + '">' + data.data[i].estado + '</option>');
//            }
//            obtenerMunicipios(data.data[0].idEstado, null);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alertify.error('Error al obtener los estados, favor de intentarlo nuevamente.');
        }
    });
}

//Obtener Municipios
function obtenerMunicipios(idEstado, idM) {
    $.ajax({
        type: "GET",
        url: $("#baseURL").val() + 'getMunicipios/' + idEstado,
        dataType: "json",
        success: function (data) {
            $("#sltMunicipio option").remove();
            for (let i = 0; i < data.data.length; i++) {
                $("#municipio").append('<option value="' + data.data[i].idMunicipio + '">' + data.data[i].municipio + '</option>');
            }
            if(idM != null) {
                $("#municipio option[value=" + idM + "]").prop("selected", true);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Status: " + textStatus);
            alert("Error: " + errorThrown);
        }
    });
}

function seleccionarEstadoMunicipio(data) {
    $("#estado option[value=" + data.estado.idEstado + "]").prop("selected", true);
    obtenerMunicipios(data.estado.idEstado, data.idMunicipio);
}