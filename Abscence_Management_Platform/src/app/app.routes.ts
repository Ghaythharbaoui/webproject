import { Routes } from '@angular/router';
import { MainComponent } from './main/main.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LoginComponent } from './login/login.component';
import { AccueilEtdComponent } from './accueil-etd/accueil-etd.component';

export const routes: Routes = [
    { path: '', redirectTo: '/home', pathMatch: 'full' },
    { path: 'home', component: MainComponent },
    { path: 'student_login', component: LoginComponent },
    {
      path: 'student_dashboard',
        component: DashboardComponent,
        children: [
          { path: 'Accueil', component: AccueilEtdComponent }
        ]
      }

];
