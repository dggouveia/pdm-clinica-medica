package br.edu.ifpb.pdm.clinica.medica.negocio.repository;

import br.edu.ifpb.pdm.clinica.medica.negocio.entidades.Cliente;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author douglasgabriel
 */
public interface ClienteRepository extends CrudRepository<Cliente, Long>{
    
    public Cliente findByEmail (@Param("email")String email);
    
    public Cliente findByEmailAndSenha (@Param("email")String email, @Param("senha") String senha);
}
