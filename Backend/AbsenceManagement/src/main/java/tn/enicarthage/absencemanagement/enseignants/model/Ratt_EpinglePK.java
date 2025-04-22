package tn.enicarthage.absencemanagement.enseignants.model;

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
public class Ratt_EpinglePK implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id_usr;
	private int id_ratt;

}
