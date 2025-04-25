package tn.enicarthage.absencemanagement.etudiants.service;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.RattrapageDTO;
import tn.enicarthage.absencemanagement.administration.repository.AbsenceRepository;
import tn.enicarthage.absencemanagement.administration.repository.RattrapageRepository;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
import tn.enicarthage.absencemanagement.etudiants.DTO.AbseanceStusresponse;
import tn.enicarthage.absencemanagement.etudiants.DTO.AbsenceEpingleeDTO;
import tn.enicarthage.absencemanagement.etudiants.DTO.RatrappageStudentRespons;
import tn.enicarthage.absencemanagement.etudiants.Repos.EtudiantRepo;
import tn.enicarthage.absencemanagement.etudiants.model.Etudiant;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class eservice {
     Date currentDate = new Date();
     @Autowired
    private final AbsenceRepository absenceRepository;
    private final RattrapageRepository rattrapageRepository;
    private final EtudiantRepo etudiantRepo;
    public eservice(AbsenceRepository absenceRepository, RattrapageRepository rattrapageRepository, EtudiantRepo etudiantRepo) {
        this.absenceRepository = absenceRepository;
        this.rattrapageRepository = rattrapageRepository;
        this.etudiantRepo = etudiantRepo;
    }
    public List<AbseanceStusresponse> getAllAbsences() {
        return absenceRepository.findAllWithEnseignant().stream().map(e->{
            return e.TransformAb(e);
        }).toList() ;
    }
    public List<RatrappageStudentRespons> getAllRattrapages() {
      return   rattrapageRepository.findAllAccWithEnseignant().stream().map(RattrapageDTO::transformToRatrappageStudentRespons).toList() ;
    }
    public List<AbsenceEpingleeDTO> getPinnedAbsences(Long etudiantId) {
      return  etudiantRepo.findWithPinnedAbsencesAndTeacher().stream().filter(e->{return e.getStudentid()==etudiantId;}).toList() ;
    }
    public List<RatrappageStudentRespons> getAllpassRattrapages() {
        return   rattrapageRepository.findAllAccWithEnseignant().stream().map(RattrapageDTO::transformToRatrappageStudentRespons).toList() ;
    }
    public List<AbseanceStusresponse> getAllAbsencesim() {
        return absenceRepository.findAllWithEnseignant().stream().filter(e-> {return e.getDate_db().after(currentDate) ;}).map(e->{
            return e.TransformAb(e);
        }).toList() ;
    }
    public List<AbsenceDTO> getAcceptedAbscenceemi()
    {
        return absenceRepository.findAllWithEnseignantacc().stream().filter(e->{return e.getDate_db().after(currentDate) ;}).toList() ;
    }
    public List<RatrappageStudentRespons> getAcceptedratrappageemin()
    {
        return (List<RatrappageStudentRespons>) rattrapageRepository.findAllAccWithEnseignant().stream().filter(e->{return e.getDate_db().after(currentDate) ;});
    }



}
