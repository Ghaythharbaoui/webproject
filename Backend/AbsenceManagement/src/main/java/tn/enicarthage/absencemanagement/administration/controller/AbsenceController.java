package tn.enicarthage.absencemanagement.administration.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.EnseignantDTO;
import tn.enicarthage.absencemanagement.administration.service.AbsenceService;
import tn.enicarthage.absencemanagement.administration.service.EnseignantService;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
import tn.enicarthage.absencemanagement.enseignants.model.Aceptee;

@AllArgsConstructor
@RestController
@RequestMapping("/api")
public class AbsenceController {
	@Autowired
 private final AbsenceService absenceService;
	 @GetMapping("/absences")
	    public List<AbsenceDTO> getAllAbsences() {
	        return absenceService.getAllAbsences();
	 }
}
