package tn.enicarthage.absencemanagement.etudiants.etudiantRepo;

import org.springframework.data.jpa.repository.JpaRepository;
import tn.enicarthage.absencemanagement.enseignants.model.Ratt_EpinglePK;
import tn.enicarthage.absencemanagement.etudiants.model.Ratt_Epingle_Et;

public interface Ratt_Epingl_ETRepo extends JpaRepository<Ratt_Epingle_Et, Ratt_EpinglePK> {
}
