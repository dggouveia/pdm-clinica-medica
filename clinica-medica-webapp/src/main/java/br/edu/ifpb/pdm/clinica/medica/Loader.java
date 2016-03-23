package br.edu.ifpb.pdm.clinica.medica;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@SpringBootApplication
@EnableAutoConfiguration
public class Loader {
    
    public static void main(String[] args) {
        SpringApplication.run(Loader.class, args);
    }
}
