package tn.enicarthage.absencemanagement.etudiants.model;


import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class Etudiant extends User implements Serializable {
	private static final long serialVersionUID = 1L;
	@Enumerated(EnumType.STRING)
	private Classe classe;
	@Enumerated(EnumType.STRING)
	private Specialite specialite;
	@Enumerated(EnumType.STRING)
	private Groupe groupe;
	
	@OneToMany(mappedBy = "user")
	private List<Abs_Epingle_Et> absences_epiglees;
	@OneToMany(mappedBy = "user")
	private List<Ratt_Epingle_Et> rattrappagees_epiglees;
	
}
