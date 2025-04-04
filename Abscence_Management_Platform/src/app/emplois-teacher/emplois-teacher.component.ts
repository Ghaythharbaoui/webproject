import { Component } from '@angular/core';

@Component({
  selector: 'app-emplois-teacher',
  imports: [],
  templateUrl: './emplois-teacher.component.html',
  styleUrl: './emplois-teacher.component.css'
})
export class EmploisTeacherComponent {

  currentModule = 'Systemes Embarques';
  currentSemester = 'S2';
  selectedDay = 'all';
  
  days = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];
  
  courses = [
    {
      day: 'Lundi',
      startTime: '08:00',
      endTime: '10:00',
      subject: 'Architecture des systèmes embarqués',
      room: 'B203',
      group: 'Groupe A'
    },
    {
      day: 'Mercredi',
      startTime: '14:00',
      endTime: '17:00',
      subject: 'Programmation temps réel',
      room: 'Labo C4',
      group: 'Groupe C'
    },
    // Ajouter d'autres cours selon besoin
  ];

  get filteredCourses() {
    return this.selectedDay === 'all' 
      ? this.courses 
      : this.courses.filter(c => c.day === this.selectedDay);
  }

  filterByDay() {
    // La logique est gérée par le getter filteredCourses
  }
}
