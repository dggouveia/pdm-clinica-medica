package br.edu.ifpb.pdm.clinica.medica.negocio.controller;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.MedicoRepository;
import com.google.common.collect.Lists;
import java.util.List;
import javax.inject.Inject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@RestController
@RequestMapping("/medicos")
public class MedicosController {

    @Inject
    private MedicoRepository repository;
    
    @RequestMapping("")
    public List<Medico> getMedicos (){
        return Lists.newArrayList(repository.findAll());
    }
    
}
