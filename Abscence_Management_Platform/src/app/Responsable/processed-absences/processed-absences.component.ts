import { Component, OnInit } from '@angular/core';
import { AdminService } from '../admin.service';
import { ProcessedAbsence } from '../absence.model';
import { CommonModule, NgFor, NgIf, DatePipe } from '@angular/common';

@Component({
  selector: 'app-processed-absences',
  standalone: true,
  imports: [CommonModule, NgIf, NgFor, DatePipe],
  templateUrl: './processed-absences.component.html',
  styleUrls: ['./processed-absences.component.css']
})
export class ProcessedAbsencesComponent implements OnInit {
  absences: ProcessedAbsence[] = [];
  loading = true;
  error: string | null = null;

  constructor(private adminService: AdminService) {}

  ngOnInit() {
    this.adminService.getProcessedAbsences().subscribe({
      next: list => {
        this.absences = list;
        this.loading = false;
      },
      error: err => {
        this.error = 'Impossible de charger l’historique des absences traitées.';
        console.error('Error loading processed absences:', err);
        this.loading = false;
      }
    });
  }
}