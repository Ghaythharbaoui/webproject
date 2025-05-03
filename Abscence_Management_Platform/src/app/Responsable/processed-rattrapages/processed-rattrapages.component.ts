import { Component, OnInit } from '@angular/core';
import { AdminService } from '../admin.service';
import { ProcessedRattrapage } from '../rattrapage.model';
import { CommonModule, NgFor, NgIf, DatePipe } from '@angular/common';

@Component({
  selector: 'app-processed-rattrapages',
  standalone: true,
  imports: [CommonModule, NgIf, NgFor, DatePipe],
  templateUrl: './processed-rattrapages.component.html',
  styleUrls: ['./processed-rattrapages.component.css']
})
export class ProcessedRattrapagesComponent implements OnInit {
  rattrapages: ProcessedRattrapage[] = [];
  loading = true;
  error: string | null = null;

  constructor(private adminService: AdminService) {}

  ngOnInit() {
    this.adminService.getProcessedRattrapages().subscribe({
      next: list => {
        this.rattrapages = list;
        this.loading = false;
      },
      error: err => {
        this.error = 'Impossible de charger l’historique des rattrapages traités.';
        console.error('Error loading processed rattrapages:', err);
        this.loading = false;
      }
    });
  }
}