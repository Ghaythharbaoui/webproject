package tn.enicarthage.absencemanagement.administration.model;

import java.io.Serializable;
import java.util.List;

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

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class traitement_Abs implements Serializable{
	private static final long serialVersionUID = 1L;
	@EmbeddedId
	private traitement_Abs_PK idtrtAbs;
	@ManyToOne
	@JoinColumn(name = "id_adm", referencedColumnName =
	"user_id", insertable = false , updatable = false)
	private Admin admin;
	
	@ManyToOne
	@JoinColumn(name = "id_abs", referencedColumnName =
	"abs_ratt_id", insertable = false , updatable = false)
	private Absence absence;
	
}
