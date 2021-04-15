$(function() {
    //
});

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