package tn.enicarthage.absencemanagement.administration.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.RattrapageDTO;
import tn.enicarthage.absencemanagement.administration.service.AbsenceService;
import tn.enicarthage.absencemanagement.administration.service.RattrapageService;

@AllArgsConstructor
@RestController
@RequestMapping("/api")
public class RattrapageController {
	@Autowired
	 private final RattrapageService rattrapageService;
		 @GetMapping("/pending_rattrapages")
		    public List<RattrapageDTO> getAllAbsences() {
		        return rattrapageService.getAllRattrapages();
		 }

}
