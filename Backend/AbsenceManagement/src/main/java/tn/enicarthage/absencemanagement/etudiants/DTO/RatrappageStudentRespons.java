package tn.enicarthage.absencemanagement.etudiants.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import tn.enicarthage.absencemanagement.enseignants.model.Aceptee;
import tn.enicarthage.absencemanagement.enseignants.model.numSeance;
import tn.enicarthage.absencemanagement.etudiants.model.Classe;
import tn.enicarthage.absencemanagement.etudiants.model.Groupe;
import tn.enicarthage.absencemanagement.etudiants.model.Specialite;

import java.sql.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class RatrappageStudentRespons {

    private Date date_db;
    private Date date_fin;
    private numSeance seancedb;
    private numSeance seancefin;
    private Classe classe;
    private Specialite specialite;
    private Groupe groupe;
    private String nom;
    private String prenom;

}
