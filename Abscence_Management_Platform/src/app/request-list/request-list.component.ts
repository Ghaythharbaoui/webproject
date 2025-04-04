import { Component, OnInit, Input } from '@angular/core';
//import { RequestService } from '../request.service'; // Assuming a general RequestService
//import { RequestItem } from '../models/request-item.model'; // Define a model

@Component({
  selector: 'app-request-list',
  templateUrl: './request-list.component.html',
  styleUrls: ['./request-list.component.css']
})
export class RequestListComponent  {
  @Input() requestType: 'absence' | 'makeup' = 'absence'; // Input to specify type  -- implements OnInit
  @Input() title: string = 'Mes demandes '; // Input for title
 // requests: RequestItem[] = []; // Array to hold requests
  filterStatus: string = ''; // For status filtering
  filterGroup: string = ''; // For group filtering
  filterClasse: string = ''; // For class filtering
  filterSpec: string = ''; // For spec filtering
  filterLabel: string = ''; // For label filtering
  searchLabel: string = ''; // For search bar

  //constructor(private requestService: RequestService) { }
/*
  ngOnInit(): void {
    this.loadRequests();
  }

  loadRequests(): void {
    this.requestService.getRequests(this.requestType).subscribe({ // Method in RequestService to fetch data
      next: (data) => {
        this.requests = data; // Assuming the API returns an array of RequestItem
      },
      error: (error) => {
        console.error('Error fetching requests', error);
      }
    });
  }

  applyFilters(): void {
    // In a real application, you'd likely send these filters to the backend
    // to perform filtering server-side for efficiency.
    // For client-side filtering (for demonstration):
    this.loadRequests(); // Re-fetch and then filter in the component if needed
  }
  applySearch(): void {
    this.loadRequests(); // Re-fetch and then search in the component if needed
  }*/
}