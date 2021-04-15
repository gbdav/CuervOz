package interfaces;

import dtos.DtoEstados;
import java.util.List;

public interface IEstados {
    public List<DtoEstados> read()throws Exception;
}
