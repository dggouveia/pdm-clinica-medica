package br.edu.ifpb.pdm.clinica.medica.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
@Controller
public class MainController {

    @RequestMapping({"", "/"})
    public String index (){
        return "index";
    }
    
}
