package br.edu.ifpb.pdm.clinica.medica.negocio.controller;

import br.edu.ifpb.pdm.clinica.medica.entidades.Avaliacao;
import br.edu.ifpb.pdm.clinica.medica.entidades.Cliente;
import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.ClienteRepository;
import br.edu.ifpb.pdm.clinica.medica.negocio.repository.MedicoRepository;
import com.google.common.collect.Lists;
import java.util.ArrayList;
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
    @Inject
    private ClienteRepository clienteRepository;
    
    @RequestMapping("")
    public List<Medico> getMedicos (){
        return Lists.newArrayList(repository.findAll());
    }
    
    @RequestMapping("/busca")
    public List<Medico> getMedicos (String query){
        List<Medico> result = new ArrayList<>();
        List<Medico> resultTmp = result = repository.findByCidade(query);        
        if (resultTmp != null || !resultTmp.isEmpty()){
            result.addAll(resultTmp);            
        }
        resultTmp = result = repository.findByEstado(query);
        if (resultTmp != null || !resultTmp.isEmpty()){
            result.addAll(resultTmp);            
        }
        resultTmp = result = repository.findByEspecialidade(query);
        if (resultTmp != null || !resultTmp.isEmpty()){
            result.addAll(resultTmp);            
        }
        return result;
    }
    
    @RequestMapping("/{id}")
    public Medico getMedico (@PathVariable long id){
        return repository.findOne(id);
    }
    
    @RequestMapping("/add")
    public String saveMedico (Medico medico){
        repository.save(medico);
        return ""+HttpStatus.ACCEPTED;
    }
    
    @RequestMapping("/add/body")
    public String saveMedico2(@RequestBody Medico medico){
        repository.save(medico);
        return ""+HttpStatus.ACCEPTED;
    }
        
    @RequestMapping("/{id}/avaliar")
    public String avaliarMedico (String opiniao, long nota, long cliente, @PathVariable long id){
        Medico medico = repository.findOne(id);
        if (medico != null){
            Cliente clienteDB = clienteRepository.findOne(cliente);
            if (clienteDB != null){
                Avaliacao avaliacao = new Avaliacao();
                avaliacao.setCliente(clienteDB);
                avaliacao.setNota(nota);
                avaliacao.setOpiniao(opiniao);
                medico.getAvaliacoes().add(avaliacao);
                repository.save(medico);
                return ""+HttpStatus.ACCEPTED;
            }
        }        
        return ""+HttpStatus.NOT_FOUND;
    }
     @RequestMapping("/{id}/object")
    public boolean avaliarMedico (@RequestBody Avaliacao avaliacao, @PathVariable long id){
        
          Medico medico = repository.findOne(id);
          medico.getAvaliacoes().add(avaliacao);
           repository.save(medico);
           return true;
    }
    
    
    
}
