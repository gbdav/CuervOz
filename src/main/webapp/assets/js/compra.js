$(function() {
    obtenerMunicipios($('#estado').val(), null);
});

//Obtener Municipios
function obtenerMunicipios(idEstado, idM) {
    $.ajax({
        type: "GET",
        url: '/CuervOzEv2/getMunicipios',
        dataType: "json",
        data : {
            "id_estado":idEstado
	},        
        success: function (data) {
            $("#municipio option").remove();
            for (let i = 0; i < data.length; i++) {
                $("#municipio").append('<option value="' + data[i].id_municipio + '">' + data[i].municipio + '</option>');
                console.log(data[i].municipio);
            }
            if(idM != null) {
                $("#municipio option[value=" + idM + "]").prop("selected", true);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest);
            console.log(textStatus);
            console.log(errorThrown);

        }
    });
}