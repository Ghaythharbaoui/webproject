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
import tn.enicarthage.absencemanagement.administration.model.traitement_Ratt;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epinglee;
import tn.enicarthage.absencemanagement.etudiants.model.Classe;
import tn.enicarthage.absencemanagement.etudiants.model.Groupe;
import tn.enicarthage.absencemanagement.etudiants.model.Ratt_Epingle;
import tn.enicarthage.absencemanagement.etudiants.model.Seance;
import tn.enicarthage.absencemanagement.etudiants.model.Specialite;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class Rattrappage extends Demande implements Serializable {
	private static final long serialVersionUID = 1L;
	@Enumerated(EnumType.STRING)
	private Classe classe;
	@Enumerated(EnumType.STRING)
	private Specialite specialite;
	@Enumerated(EnumType.STRING)
	private Groupe groupe;
	@Temporal(TemporalType.DATE)
	@Column(name = "date_affectee",nullable=true)
	private Date date_aff;
	@Column(nullable=true)
	@Enumerated(EnumType.STRING)
	private numSeance seanceAff;
	@Column(nullable=true)
	private String SalleAff;
	
	@OneToMany(mappedBy = "ratt")
	private List<Ratt_Epingle> rattrappages_epingle;
	
	@ManyToOne(cascade = CascadeType.ALL
			,fetch = FetchType.EAGER/* fetch =
			FetchType.LAZY*/)
			private Enseignant enseignant;
	
	
	@OneToMany( cascade =
			CascadeType.ALL, mappedBy = "rattrapage")
			private List<Seance> listSeancesRatt;
	
	
	@OneToMany(mappedBy = "rattrapage")
	private List<traitement_Ratt> treaitements_Ratt;
	
	

}
