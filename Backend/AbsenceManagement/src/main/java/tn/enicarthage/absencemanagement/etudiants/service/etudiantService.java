package tn.enicarthage.absencemanagement.etudiants.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tn.enicarthage.absencemanagement.etudiants.etudiantRepo.etudiantRepo;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epingle_Et;

import java.util.List;

@Service
public class etudiantService {
    @Autowired
    private final etudiantRepo etudiantRepo;
    private  final Abs_Eping_etService abs_Eping_etService;
    public etudiantService(etudiantRepo etudiantRepo, Abs_Eping_etService absEpingEtService) {
        this.etudiantRepo = etudiantRepo;
        abs_Eping_etService = absEpingEtService;
    }
    public  List<Abs_Epingle_Et> getAbs_Epingle_Et() {
        return abs_Eping_etService.AllAbs_Epingle_Et() ;
    }

}
