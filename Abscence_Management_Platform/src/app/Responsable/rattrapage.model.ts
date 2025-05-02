export interface RattrapageRequest {
    id: number;
    date_db: string;      // ISO date strings
    date_fin: string;
    seancedb: string | null;
    seancefin: string | null;
    acceptee: boolean | null;
    classe: string;
    specialite: string;
    groupe: string;
    idens: number;
    nom: string;
    prenom: string;
    grade: string;
    num_tel: string;
    nbAbsences: number;
  }
  
  // The shape returned by /SeancesDispoST_ET
  export type SeancesDispo = Record<
    string,               // e.g. "MONDAY"
    Record<
      number,             // seance number, e.g. 1,4,5
      string[]            // list of "dd/MM/yyyy"
    >
  >;
  
  // The final accept payload
  export interface AccepterRattrapageRequest {
    rattrapageId: number;
    dateAff: string;      // "dd/MM/yyyy"
    seanceAff: number;
    salleId: string;
    enseignantId: number;
  }
  