package br.edu.ifpb.pdm.clinica.medica.negocio.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Entity
public class Cliente {

    @Id
    @GeneratedValue
    private long id;
    private String email;
    private String senha;

    public Cliente(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    public Cliente() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}
