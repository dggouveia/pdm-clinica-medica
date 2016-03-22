package br.edu.ifpb.pdm.clinica.medica.negocio.controller;

import br.edu.ifpb.pdm.clinica.medica.negocio.entidades.Cliente;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.ClienteRepository;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<HttpStatus> salvar (String email, String senha){
        Cliente cliente = new Cliente(email, senha);
        repository.save(cliente);
        return new ResponseEntity<>(HttpStatus.ACCEPTED);
    }
            
    @RequestMapping(value = "/login")
    public Cliente login (String email, String senha){
        System.out.println(email + senha);
        return repository.findByEmailAndSenha(email, senha);
    }
    
}
