package tn.enicarthage.absencemanagement.administration.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.enicarthage.absencemanagement.enseignants.model.Enseignant;
@Repository
public interface EnseignantRepository extends JpaRepository<Enseignant, Long>{
	
}
