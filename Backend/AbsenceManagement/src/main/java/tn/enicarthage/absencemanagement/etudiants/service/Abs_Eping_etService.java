package tn.enicarthage.absencemanagement.etudiants.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tn.enicarthage.absencemanagement.etudiants.etudiantRepo.Abs_Eping_etRepo;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epingle_Et;

import java.util.ArrayList;
import java.util.List;

@Service
public class Abs_Eping_etService {
    @Autowired
    private final Abs_Eping_etRepo abs_Eping_etRepo;

    public Abs_Eping_etService(Abs_Eping_etRepo absEpingEtRepo) {
        abs_Eping_etRepo = absEpingEtRepo;
    }
    public List<Abs_Epingle_Et> AllAbs_Epingle_Et()
    {
        return abs_Eping_etRepo.findAll() ;
    }


}
