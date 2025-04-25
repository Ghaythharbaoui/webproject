package tn.enicarthage.absencemanagement.etudiants.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tn.enicarthage.absencemanagement.administration.model.AbsenceDTO;

import java.sql.Date;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class AbseanceStusresponse  {
    private Date date_db;
    private Date date_fin;
    private String nomEnseignant;
    private String prenomEnseignant;
}
