package br.edu.ifpb.pdm.clinica.medica.negocio.repository;

import br.edu.ifpb.pdm.clinica.medica.entidades.Medico;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author douglasgabriel
 */
public interface MedicoRepository extends CrudRepository<Medico, Long>{
    
}
