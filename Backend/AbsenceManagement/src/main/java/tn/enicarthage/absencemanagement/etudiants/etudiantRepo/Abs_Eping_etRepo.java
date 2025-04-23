package tn.enicarthage.absencemanagement.etudiants.etudiantRepo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tn.enicarthage.absencemanagement.enseignants.model.Abs_EpingleePK;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epingle_Et;
@Repository
public interface Abs_Eping_etRepo extends JpaRepository<Abs_Epingle_Et, Abs_EpingleePK> {
}
