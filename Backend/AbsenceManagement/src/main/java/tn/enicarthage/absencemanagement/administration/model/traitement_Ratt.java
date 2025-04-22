package tn.enicarthage.absencemanagement.administration.model;

import java.io.Serializable;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
import tn.enicarthage.absencemanagement.enseignants.model.Rattrappage;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class traitement_Ratt implements Serializable{
	private static final long serialVersionUID = 1L;
	@EmbeddedId
	private traitement_Ratt_PK idtrtRat;
	
	@ManyToOne
	@JoinColumn(name = "id_adm", referencedColumnName =
	"user_id", insertable = false , updatable = false)
	private Admin admin;
	
	@ManyToOne
	@JoinColumn(name = "id_rat", referencedColumnName =
	"abs_ratt_id", insertable = false , updatable = false)
	private Rattrappage rattrapage;

}
