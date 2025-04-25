package tn.enicarthage.absencemanagement.etudiants.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.RattrapageDTO;
import tn.enicarthage.absencemanagement.administration.service.RattrapageService;
import tn.enicarthage.absencemanagement.enseignants.model.Aceptee;
import tn.enicarthage.absencemanagement.etudiants.DTO.AbseanceStusresponse;
import tn.enicarthage.absencemanagement.etudiants.DTO.AbsenceEpingleeDTO;
import tn.enicarthage.absencemanagement.etudiants.DTO.RatrappageStudentRespons;
import tn.enicarthage.absencemanagement.etudiants.service.eservice;

import java.util.List;

@RestController
@RequestMapping("/etd")
public class eController {
    @Autowired
    private final eservice eservice ;

    public eController(tn.enicarthage.absencemanagement.etudiants.service.eservice eservice, RattrapageService rattrapageService) {
        this.eservice = eservice;


    }
   @GetMapping("/abs")
    public List<AbseanceStusresponse> getAllAbsences() {
      return   eservice.getAllAbsences() ;
    }
    @GetMapping("/ratrappages")
    public List<RatrappageStudentRespons> getAllRattrapages() {
        return eservice.getAllRattrapages() ;
    }
    @GetMapping("/pignedAbs/{id}")
    public List<AbsenceEpingleeDTO> getAllPignedAbsences(@PathVariable Long id) {
        return eservice.getPinnedAbsences(id)  ;
    }
    @GetMapping("/absemi")
    public List<AbsenceDTO> getAllAbsemi() {
        return eservice.getAcceptedAbscenceemi();
     }


}
