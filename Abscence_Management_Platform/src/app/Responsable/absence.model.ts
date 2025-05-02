export interface Absence {
    id: number;
    date_db: string;      // ISO date start
    date_fin: string;     // ISO date end
    seancedb: string;
    seancefin: string;
    acceptee: boolean | null;
    idens: number;
    nom: string;
    prenom: string;
    grade: string;
    num_tel: string;
    nbAbsences: number;
  }
  