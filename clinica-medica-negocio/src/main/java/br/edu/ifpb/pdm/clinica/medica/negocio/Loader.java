package br.edu.ifpb.pdm.clinica.medica.negocio;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@EnableJpaAuditing
@SpringBootApplication
public class Loader {

    public static void main(String... args) {
        SpringApplication.run(Loader.class, args);
    }

}
