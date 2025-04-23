package tn.enicarthage.absencemanagement.etudiants.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epingle_Et;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epinglee;
import tn.enicarthage.absencemanagement.etudiants.service.etudiantService;

import java.util.List;

@RestController("/etd")
public class etudiantController {
    @Autowired
    private final etudiantService eservice;
    public etudiantController(etudiantService service) {
        this.eservice = service;
    }
    @GetMapping("/pignedAbs")
    public List<Abs_Epingle_Et> allpignedAbs() {
        return eservice.getAbs_Epingle_Et() ;
    }

}
