package tn.enicarthage.absencemanagement.administration.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
@Repository
public interface AbsenceRepository extends JpaRepository<Absence, Long>{
	
	@Query("""
		      SELECT new tn.enicarthage.absencemanagement.administration.model.AbsenceDTO(
		        a.id,
		        a.date_db,           
		        a.date_fin,
		        a.seancedb,
		        a.seancefin,
		        a.acceptee,
		        e.user_id,           
		        e.nom,
		        e.prenom,
		        e.grade,
		        e.num_tel
		      )
		      FROM Absence a
		      JOIN a.enseignant e
		    """)
		    List<AbsenceDTO> findAllWithEnseignant();
	

}
