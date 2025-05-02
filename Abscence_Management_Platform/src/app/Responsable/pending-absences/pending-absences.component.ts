import { Component, OnInit } from '@angular/core';
import { AdminService } from '../admin.service';
import { Absence } from '../absence.model';
import { CommonModule } from '@angular/common';
import { NgIf, NgFor } from '@angular/common';

@Component({
  selector: 'app-pending-absences',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './pending-absences.component.html',
  styleUrls: ['./pending-absences.component.css']
})
export class PendingAbsencesComponent implements OnInit {
  absences: Absence[] = [];
  loading = true;
  error: string | null = null;

  constructor(private adminService: AdminService) {}

  ngOnInit() {
    this.adminService.getPendingAbsences().subscribe({
      next: list => {
        this.absences = list;
        this.loading = false;
      },
      error: err => {
        this.error = 'Failed to load pending absences.';
        this.loading = false;
      }
    });
  }

  onRespond(abs: Absence, accept: boolean) {
    this.adminService.respondToAbsence(abs.id, accept).subscribe({
      next: () => {
        // remove from list
        this.absences = this.absences.filter(a => a.id !== abs.id);
      },
      error: () => alert('Could not update request.')
    });
  }
}

