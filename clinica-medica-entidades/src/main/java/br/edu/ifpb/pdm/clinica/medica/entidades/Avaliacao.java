package br.edu.ifpb.pdm.clinica.medica.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Entity
public class Avaliacao {
    
    @Id
    @GeneratedValue
    private long id;
    private String opiniao;
    private long nota;
    @ManyToOne
    private Cliente cliente;

    public long getId() {
        return id;
    }

    public String getOpiniao() {
        return opiniao;
    }

    public void setOpiniao(String opiniao) {
        this.opiniao = opiniao;
    }

    public long getNota() {
        return nota;
    }

    public void setNota(long nota) {
        if (nota < 0)
            this.nota = 0;
        else if (nota > 5)
            this.nota = 5;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
}
