package tn.enicarthage.absencemanagement.enseignants.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import tn.enicarthage.absencemanagement.etudiants.model.Abs_Epinglee;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Demande implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	@Column(name = "abs_ratt_id")
	private int id;
	@Temporal(TemporalType.DATE)
	@Column(name = "date_au_plus_tot")
	private Date date_db;
	@Temporal(TemporalType.DATE)
	@Column(name = "date_au_plus_tard")
	private Date date_fin;
	@Enumerated(EnumType.STRING)
	private numSeance seancedb;
	@Enumerated(EnumType.STRING)
	private numSeance seancefin;
	@Enumerated(EnumType.STRING)
	@Column(nullable=true)
	private Aceptee acceptee;
}
