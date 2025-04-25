package tn.enicarthage.absencemanagement.administration.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.EmploiTempsRowsDTO;
import tn.enicarthage.absencemanagement.administration.service.EmploiTempsService;
import tn.enicarthage.absencemanagement.etudiants.model.Classe;
import tn.enicarthage.absencemanagement.etudiants.model.EmploiTemps;
import tn.enicarthage.absencemanagement.etudiants.model.Groupe;
import tn.enicarthage.absencemanagement.etudiants.model.Specialite;

@RestController
@RequestMapping("/api/emploi-temps")
@AllArgsConstructor
public class EmploiTempsController {
    private final EmploiTempsService service;

    @GetMapping
    public List<EmploiTempsRowsDTO> fetchTimetable(
        @RequestParam Classe classe,
        @RequestParam Specialite specialite,
        @RequestParam Groupe groupe
    ) {
        return service.getTimetableRows(classe, specialite, groupe) .stream()
                .sorted(Comparator.comparing(EmploiTempsRowsDTO::getJourr))
                .collect(Collectors.toList());
    }
}