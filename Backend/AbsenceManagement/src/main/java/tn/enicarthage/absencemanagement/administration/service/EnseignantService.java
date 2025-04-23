package tn.enicarthage.absencemanagement.administration.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.repository.EnseignantRepository;
import tn.enicarthage.absencemanagement.enseignants.model.Enseignant;

@AllArgsConstructor
@Service
public class EnseignantService {
	@Autowired
 private final EnseignantRepository enseignantRepository;
	 
	 public List<Enseignant> getAllEnseignants() {
	        return enseignantRepository.findAll();
	    }

}
