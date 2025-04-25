package tn.enicarthage.absencemanagement.etudiants.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import tn.enicarthage.absencemanagement.etudiants.model.Groupe;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor

public class AbsenceEpingleeDTO {
    private Long Studentid ;
    private Long absenceId;
    private Date dateDebut;

    private Date dateFin;
    private String seanceDebut;
    private String seanceFin;
    private String enseignantNom;       // supposons User a un champ “nom”
    private String enseignantPrenom;    // idem

}
