package br.edu.ifpb.pdm.clinica.medica.negocio.repository;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author douglasgabriel
 */
public interface MedicoRepository extends CrudRepository<Medico, Long>{
    
    List<Medico> findByEspecialidade (String especialidade);
    
    List<Medico> findByCidade (String cidade);
    
    List<Medico> findByEstado (String estado);
    
}
