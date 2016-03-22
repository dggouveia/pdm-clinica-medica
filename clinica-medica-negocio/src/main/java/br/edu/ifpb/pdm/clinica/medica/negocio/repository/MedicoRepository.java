package br.edu.ifpb.pdm.clinica.medica.negocio.repository;

import br.edu.ifpb.pdm.clinica.medica.negocio.entidades.Medico;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author douglasgabriel
 */
public interface MedicoRepository extends CrudRepository<Medico, Long>{
    
}
