package tn.enicarthage.absencemanagement.administration.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.RattrapageDTO;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
import tn.enicarthage.absencemanagement.enseignants.model.Rattrappage;
@Repository
public interface RattrapageRepository extends JpaRepository<Rattrappage, Long>{
	
	@Query("""
		      SELECT new tn.enicarthage.absencemanagement.administration.model.RattrapageDTO(
		        a.id,
		        a.date_db,           
		        a.date_fin,
		        a.seancedb,
		        a.seancefin,
		        a.acceptee,
		        a.classe,
		        a.specialite,
		        a.groupe,
		        e.id,           
		        e.nom,
		        e.prenom,
		        e.grade,
		        e.num_tel,
		        e.nbAbsences
		      )
		      FROM Rattrappage a
		      JOIN a.enseignant e
		      WHERE a.acceptee IS  NULL
		    """)
		    List<RattrapageDTO> findAllWithEnseignant();
	@Query("""
		      SELECT new tn.enicarthage.absencemanagement.administration.model.RattrapageDTO(
		        a.id,
		        a.date_db,           
		        a.date_fin,
		        a.seancedb,
		        a.seancefin,
		        a.acceptee,
		        a.classe,
		        a.specialite,
		        a.groupe,
		        e.id,           
		        e.nom,
		        e.prenom,
		        e.grade,
		        e.num_tel,
		        e.nbAbsences
		      )
		      FROM Rattrappage a
		      JOIN a.enseignant e
		      WHERE a.acceptee = "oui" 
		    """)
	List<RattrapageDTO> findAllAccWithEnseignant() ;
}
