package tn.enicarthage.absencemanagement.enseignants.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import tn.enicarthage.absencemanagement.administration.model.traitement_Abs;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epinglee;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public  class Absence extends Demande implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@OneToMany(mappedBy = "abs")
	private List<Abs_Epinglee> absences_epingle;
	
	@ManyToOne(cascade = CascadeType.ALL
			,fetch = FetchType.EAGER/* fetch =
			FetchType.LAZY*/)
			private Enseignant enseignant;
	
	
	@OneToMany(mappedBy = "absence")
	private List<traitement_Abs> treaitements_Abs;

}
