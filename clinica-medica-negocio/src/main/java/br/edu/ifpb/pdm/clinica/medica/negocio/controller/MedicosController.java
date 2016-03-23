package br.edu.ifpb.pdm.clinica.medica.negocio.controller;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.MedicoRepository;
import com.google.common.collect.Lists;
import java.util.List;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
    
    @RequestMapping("/busca")
    public List<Medico> getMedicos (String cidade, String estado, String especialidade){
        if (cidade != null && !cidade.isEmpty())
            return repository.findByCidade(cidade);
        if (estado != null && !estado.isEmpty())
            return repository.findByCidade(estado);
        if (especialidade != null && !especialidade.isEmpty())
            return repository.findByCidade(especialidade);
        return null;
    }
    
    @RequestMapping("/{id}")
    public Medico getMedico (@PathVariable long id){
        return repository.findOne(id);
    }
    
    public String saveMedico (@RequestBody Medico medico){
        repository.save(medico);
        return ""+HttpStatus.ACCEPTED;
    }
    
}
