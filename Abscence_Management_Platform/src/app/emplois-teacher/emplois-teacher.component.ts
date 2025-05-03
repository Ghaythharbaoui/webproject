import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-emplois-teacher',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './emplois-teacher.component.html',
  styleUrls: ['./emplois-teacher.component.css']
})
export class EmploisTeacherComponent {
  days: string[] = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi'];
  currentModule: string = 'Module 1'; // Example
  currentSemester: string = 'S1'; // Example
  filteredCourses: any[] = []; // Replace with actual course type
  courses: any[] = []; // Replace with actual course type

  filterByDay(): void {
    // Implement filtering logic
  }
}