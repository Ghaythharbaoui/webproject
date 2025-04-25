package tn.enicarthage.absencemanagement.administration.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.EmploiTempsRowsDTO;
import tn.enicarthage.absencemanagement.administration.service.EmploiTempsService;
import tn.enicarthage.absencemanagement.administration.service.RattrapageService;
import tn.enicarthage.absencemanagement.administration.service.SeanceDispoENSERVICE;
import tn.enicarthage.absencemanagement.administration.service.SeanceService;
import tn.enicarthage.absencemanagement.enseignants.model.Aceptee;
import tn.enicarthage.absencemanagement.etudiants.model.Classe;
import tn.enicarthage.absencemanagement.etudiants.model.Groupe;
import tn.enicarthage.absencemanagement.etudiants.model.Specialite;

@RestController
@RequestMapping("/api/SeancesDispoENS")
@AllArgsConstructor
public class SeancesDispoENS {
	
	@Autowired
	private SeanceDispoENSERVICE service;
	@GetMapping
	 public Map<DayOfWeek, Map<Integer, List<LocalDate>>>  fetchTimetable(
		       
		        @RequestParam 
		        @DateTimeFormat(pattern = "dd/MM/yyyy")
		        LocalDate start,
		        @RequestParam 
		        @DateTimeFormat(pattern = "dd/MM/yyyy")
		        LocalDate end,
		        @RequestParam Long idens
		        //il faut ajouter 
		    ){
		 return service.fetchTimetable(start, end, idens);
		 
	 }
	

}
