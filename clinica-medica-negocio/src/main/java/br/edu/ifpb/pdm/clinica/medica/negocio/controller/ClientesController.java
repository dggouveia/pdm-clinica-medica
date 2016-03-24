package br.edu.ifpb.pdm.clinica.medica.negocio.controller;

import br.edu.ifpb.pdm.clinica.medica.entidades.Cliente;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.ClienteRepository;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@RestController
@RequestMapping("/clientes")
public class ClientesController {

    @Inject
    private ClienteRepository repository;  
    
    @RequestMapping(value = "/salvar")
    public String salvar (@RequestBody Cliente cliente){
        repository.save(cliente);
        return ""+HttpStatus.ACCEPTED;
    }
    
    @RequestMapping(value = "/salvar/param")
    public String salvar (String email, String senha){
        repository.save(new Cliente(email, senha));
        return ""+HttpStatus.ACCEPTED;
    }
            
    @RequestMapping(value = "/login")
    public Cliente login (String email, String senha){
        System.out.println(email + senha);
        return repository.findByEmailAndSenha(email, senha);
    }
    
}
