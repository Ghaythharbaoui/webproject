package tn.enicarthage.absencemanagement.administration.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.EtudiantDTO;
import tn.enicarthage.absencemanagement.administration.repository.StudentRepository;
import tn.enicarthage.absencemanagement.etudiants.model.Etudiant;
@AllArgsConstructor
@Service
public class StudentService {
	 private final StudentRepository studentRepository;
	 
	 public List<Etudiant> getAllStudents() {
	        return studentRepository.findAll();
	    }
	 
}
