package tn.enicarthage.absencemanagement.etudiants.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tn.enicarthage.absencemanagement.etudiants.etudiantRepo.Ratt_Epingl_ETRepo;
import tn.enicarthage.absencemanagement.etudiants.model.Ratt_Epingle_Et;

import java.util.List;

@Service
public class Ratt_Epingl_ETservice {
    @Autowired
    private final Ratt_Epingl_ETRepo ratt_Epingl_ETRepo;

    public Ratt_Epingl_ETservice(Ratt_Epingl_ETRepo rattEpinglEtRepo) {
        ratt_Epingl_ETRepo = rattEpinglEtRepo;
    }
    public List<Ratt_Epingle_Et> getAllRatt_Epingle_ET() {
        return ratt_Epingl_ETRepo.findAll();
    }
}
