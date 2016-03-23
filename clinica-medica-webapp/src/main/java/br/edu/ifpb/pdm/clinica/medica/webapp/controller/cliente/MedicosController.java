package br.edu.ifpb.pdm.clinica.medica.webapp.controller.cliente;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import br.edu.ifpb.pdm.clinica.medica.webapp.utils.RequisicaoHttp;
import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Controller
@RequestMapping("/medicos")
public class MedicosController {

    private final String URL = "http://localhost:8080/";
    
    @RequestMapping("")
    public String getMedicos (HttpServletRequest request){        
        request.setAttribute("medicos", mountListMedicos(RequisicaoHttp.getJson(URL + "medicos")));
        return "medicos";
    }
    
    private List<Medico> mountListMedicos (String json){
        TypeToken<List<Medico>> token = new TypeToken<List<Medico>>() {};
        return new Gson().fromJson(json, token.getType());
    }
    
}
