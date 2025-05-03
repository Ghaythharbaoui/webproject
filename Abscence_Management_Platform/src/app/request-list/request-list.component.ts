import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-request-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './request-list.component.html',
  styleUrls: ['./request-list.component.css']
})
export class RequestListComponent {
  title: string = 'Request List'; // Example
  requests: any[] = []; // Replace with actual request type
}