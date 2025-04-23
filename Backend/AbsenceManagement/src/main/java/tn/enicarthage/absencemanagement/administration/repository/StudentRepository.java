package tn.enicarthage.absencemanagement.administration.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.enicarthage.absencemanagement.administration.model.EtudiantDTO;
import tn.enicarthage.absencemanagement.etudiants.model.Etudiant;

@Repository
public interface StudentRepository extends JpaRepository<Etudiant, Long>{
}
