package tn.enicarthage.absencemanagement.etudiants.Repos;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import tn.enicarthage.absencemanagement.etudiants.DTO.AbsenceEpingleeDTO;
import tn.enicarthage.absencemanagement.etudiants.model.Etudiant;

import java.util.List;

@Repository
public interface EtudiantRepo extends JpaRepository<Etudiant, Integer> {
    public Etudiant findById(Long id);
    @Query( value = "select  e.user_id ,\n" +
            "       ab.abs_ratt_id,\n" +
            "       ab.date_au_plus_tot,\n" +
            "       ab.date_au_plus_tard,\n" +
            "       ab.seancedb,\n" +
            "       ab.seancefin ,\n" +
            "       ens.nom ,\n" +
            "       ens.prenom\n" +
            "from abs_epinglee ae ,absence ab ,etudiant e,enseignant ens\n" +
            "where e.user_id=ae.id_usr\n" +
            "and\n" +
            "    ae.id_abs=ab.abs_ratt_id\n" +
            "and\n" +
            "    ab.enseignant_user_id=ens.user_id ;",
            nativeQuery = true)
    public List<AbsenceEpingleeDTO> findWithPinnedAbsencesAndTeacher();
}
