package tn.enicarthage.absencemanagement.etudiants.etudiantRepo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tn.enicarthage.absencemanagement.etudiants.model.Etudiant;
import tn.enicarthage.absencemanagement.etudiants.model.User;
@Repository
  public interface etudiantRepo extends JpaRepository<Etudiant, Long> {
}
