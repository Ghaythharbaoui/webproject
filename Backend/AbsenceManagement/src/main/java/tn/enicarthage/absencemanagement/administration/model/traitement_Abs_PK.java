package tn.enicarthage.absencemanagement.administration.model;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
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
@Embeddable
public class traitement_Abs_PK implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id_adm;
	private int id_abs;

}
