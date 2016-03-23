package br.edu.ifpb.pdm.clinica.medica.webapp.controller.cliente;

import br.edu.ifpb.pdm.clinica.medica.entidades.Cliente;
import br.edu.ifpb.pdm.clinica.medica.webapp.utils.RequisicaoHttp;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import javax.servlet.http.HttpSession;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Controller
@RequestMapping("/clientes")
public class ClientesController {

    private final String URL = "http://localhost:8080/clientes/";

    @RequestMapping("/login")
    public @ResponseBody
    String login(Cliente cliente, HttpSession session) throws UnsupportedEncodingException, IOException {
        List<NameValuePair> params = new ArrayList<NameValuePair>(2);
        params.add(new BasicNameValuePair("email", cliente.getEmail()));
        params.add(new BasicNameValuePair("senha", cliente.getSenha()));
        HttpEntity entity = RequisicaoHttp.post(URL + "/login", params);
        if (entity != null) {
            InputStream instream = entity.getContent();
            try {
                session.setAttribute("cliente", cliente);
                return "" + HttpStatus.ACCEPTED;
            } catch (Exception e) {
                return "" + HttpStatus.NOT_FOUND;
            } finally {
                instream.close();
            }
        }
        return null;
    }

    @RequestMapping("/cadastrar")
    public @ResponseBody
    String cadastro(Cliente cliente, HttpSession session) throws UnsupportedEncodingException, IOException {
        List<NameValuePair> params = new ArrayList<NameValuePair>(2);
        params.add(new BasicNameValuePair("email", cliente.getEmail()));
        params.add(new BasicNameValuePair("senha", cliente.getSenha()));
        HttpEntity entity = RequisicaoHttp.post(URL + "/salvar", params);
        if (entity != null) {
            InputStream input = entity.getContent();
            try {
                String response = new Scanner(input).next();
                if (response.equals("" + HttpStatus.ACCEPTED.ordinal())) {
                    session.setAttribute("cliente", cliente);
                    return "" + HttpStatus.ACCEPTED;
                }
                return "" + HttpStatus.NOT_ACCEPTABLE;
            } catch (Exception e) {
                return "" + HttpStatus.NOT_ACCEPTABLE;
            } finally {
                input.close();
            }
        }
        return null;
    }
}
