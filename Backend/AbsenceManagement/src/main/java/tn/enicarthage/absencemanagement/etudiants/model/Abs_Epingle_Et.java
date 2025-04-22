package tn.enicarthage.absencemanagement.etudiants.model;

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
import tn.enicarthage.absencemanagement.enseignants.model.Abs_EpingleePK;
import tn.enicarthage.absencemanagement.enseignants.model.Absence;
import tn.enicarthage.absencemanagement.enseignants.model.Enseignant;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class Abs_Epingle_Et implements Serializable{
	private static final long serialVersionUID = 1L;
	@EmbeddedId
	private Abs_EpingleePK idepg;
	@ManyToOne
	@JoinColumn(name = "id_usr", referencedColumnName =
	"user_id", insertable = false , updatable = false)
	private Etudiant user;
	@ManyToOne
	@JoinColumn(name = "id_abs", referencedColumnName =
	"abs_ratt_id", insertable = false , updatable =false)
	private Absence abs;
}
