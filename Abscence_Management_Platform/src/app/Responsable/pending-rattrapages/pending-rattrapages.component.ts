import { Component, OnInit } from '@angular/core';
import { AdminService } from '../admin.service';
import {
  RattrapageRequest,
  SeancesDispo,
  AccepterRattrapageRequest
} from '../rattrapage.model';
import { CommonModule } from '@angular/common';
import { NgFor, NgIf } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-pending-rattrapages',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './pending-rattrapages.component.html',
  styleUrls: ['./pending-rattrapages.component.css']
})
export class PendingRattrapagesComponent implements OnInit {
  requests: RattrapageRequest[] = [];
  loading = true;
  error: string | null = null;

// instead of storing dispo & separate selectedDay/selectedSeance…
seancesMap = new Map<number, {
  options?: { date: string; day: string; seance: number }[];
  selectedOption?: { date: string; day: string; seance: number };
  salles?: string[];
  selectedSalle?: string;
}>();


  constructor(private admin: AdminService) {}

  ngOnInit() {
    this.admin.getPendingRattrapages().subscribe({
      next: list => {
        this.requests = list;
        this.loading = false;
      },
      error: () => {
        this.error = 'Impossible de charger les rattrapages.';
        this.loading = false;
      }
    });
  }

  onLoadSeances(req: RattrapageRequest) {
    const key = req.id;
    const entry = this.seancesMap.get(key) || {};
    this.admin
      .getSeancesDispo(
        req.classe,
        req.specialite,
        req.groupe,
        this.format(req.date_db),
        this.format(req.date_fin),
        req.idens
      )
      .subscribe(dispo => {
        // flatten DayOfWeek → seance → dates into one list
        const opts: { date: string; day: string; seance: number }[] = [];
        Object.entries(dispo).forEach(([day, map]) => {
          Object.entries(map).forEach(([sn, dates]) => {
            const seanceNum = Number(sn);
            dates.forEach(dateStr => {
              opts.push({ date: dateStr, day, seance: seanceNum });
            });
          });
        });
        entry.options = opts;
        this.seancesMap.set(key, entry);
      });
  }

  onOptionSelect(req: RattrapageRequest, opt: { date: string; day: string; seance: number }) {
    console.log('Option selected:', opt);
    const entry = this.seancesMap.get(req.id)!;
    entry.selectedOption = opt;
    entry.salles = undefined;
    entry.selectedSalle = undefined;
    this.admin
      .getSallesDispo(
        opt.date,            // already "dd/MM/yyyy"
        opt.day,
        opt.seance
      )
      .subscribe(salles => {
        entry.salles = salles;
        console.log('Salles chargées:', salles);
        this.seancesMap.set(req.id, entry);
      });
  }
  

  


  onAccept(req: RattrapageRequest) {
    const entry = this.seancesMap.get(req.id)!;
    const opt = entry.selectedOption!;
    const payload: AccepterRattrapageRequest = {
      rattrapageId: req.id,
      dateAff: opt.date,
      seanceAff: opt.seance,
      salleId: entry.selectedSalle!,
      enseignantId: req.idens
    };
    
    this.admin.accepterRattrapage(payload).subscribe({
      next: () => {
        this.requests = this.requests.filter(r => r.id !== req.id);
        this.seancesMap.delete(req.id);
      },
      error: () => alert('Erreur lors de l’acceptation.')
    });
  }

  private format(iso: string) {
    // convert "YYYY-MM-DD" → "dd/MM/yyyy"
    const d = new Date(iso);
    const dd = String(d.getDate()).padStart(2,'0');
    const mm = String(d.getMonth()+1).padStart(2,'0');
    const yy = d.getFullYear();
    return `${dd}/${mm}/${yy}`;
  }


  getSelectValue(event: Event): any {
    const target = event.target as HTMLSelectElement;
    return target.value;
  }
  
}
