package interfaces;

import dtos.DtoMunicipios;
import java.util.List;

public interface IMunicipios {
    public List<DtoMunicipios> read_(String Municipios)throws Exception;
}
