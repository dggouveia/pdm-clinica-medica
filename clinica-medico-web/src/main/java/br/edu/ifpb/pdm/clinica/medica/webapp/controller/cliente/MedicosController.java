package br.edu.ifpb.pdm.clinica.medica.webapp.controller.cliente;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import br.edu.ifpb.pdm.clinica.medica.webapp.utils.RequisicaoHttp;
import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Controller
@RequestMapping("/medicos")
public class MedicosController {

    private final String URL = "http://localhost:8080/medicos";
    
    @RequestMapping("")
    public String getMedicos (HttpServletRequest request){        
        request.setAttribute("medicos", mountListMedicos(RequisicaoHttp.getJson(URL)));
        return "medicos";
    }
    
    @RequestMapping("/addModal")
    public String getModalAddMedicos (HttpServletRequest request){        
        return "modalAddMedico";
    }
    
    @RequestMapping("/viewModal/{id}")
    public String getModalMedicos (HttpServletRequest request, @PathVariable long id){        
        request.setAttribute("medico", mountMedico(RequisicaoHttp.getJson(URL + "/" + id)));
        return "modalMedico";
    }
    
    @RequestMapping("/add")
    public void addMedico (Medico medico, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        sendAddRequest(medico);
        request.getServletContext().getRequestDispatcher("/medicos").forward(request, response);
    }
    
    private void sendAddRequest (Medico medico){
        List<NameValuePair> params = new ArrayList<NameValuePair>();
        params.add(new BasicNameValuePair("nome", medico.getNome()));
        params.add(new BasicNameValuePair("contato", medico.getContato()));
        params.add(new BasicNameValuePair("nomeClinica", medico.getNomeClinica()));
        params.add(new BasicNameValuePair("cidade", medico.getCidade()));
        params.add(new BasicNameValuePair("estado", medico.getEstado()));
        params.add(new BasicNameValuePair("especialidade", medico.getEspecialidade()));
        params.add(new BasicNameValuePair("lat", medico.getLat()));
        params.add(new BasicNameValuePair("log", medico.getLog()));
        try {
            System.out.println(new Scanner(RequisicaoHttp.post("http://localhost:8080/medicos/add", params).getContent()).next());
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    private List<Medico> mountListMedicos (String json){
        System.out.println(json);
        TypeToken<List<Medico>> token = new TypeToken<List<Medico>>() {};
        return new Gson().fromJson(json, token.getType());
    }
    
    private Medico mountMedico (String json){
        System.out.println(json);
        TypeToken<Medico> token = new TypeToken<Medico>() {};
        return new Gson().fromJson(json, token.getType());
    }
    
}
