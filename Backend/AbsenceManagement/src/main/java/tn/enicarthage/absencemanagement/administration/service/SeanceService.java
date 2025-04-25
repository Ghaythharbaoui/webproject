package tn.enicarthage.absencemanagement.administration.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;
import tn.enicarthage.absencemanagement.administration.model.SeanceInfo;
import tn.enicarthage.absencemanagement.administration.repository.AbsenceRepository;
import tn.enicarthage.absencemanagement.administration.repository.SeanceRepository;
import tn.enicarthage.absencemanagement.enseignants.model.Aceptee;

@AllArgsConstructor
@Service
public class SeanceService {
	@Autowired
	public final SeanceRepository seancerepository;
	public  SeanceInfo IsRattrappage(int ids) {
        return seancerepository.IsRattrapage(ids);
    }

}
