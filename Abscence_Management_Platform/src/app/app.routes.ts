import { Routes } from '@angular/router';
import { MainComponent } from './main/main.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LoginComponent } from './login/login.component';
import { AccueilEtdComponent } from './accueil-etd/accueil-etd.component';
import { AbsRattEtdComponent } from './abs-ratt-etd/abs-ratt-etd.component';
import { EmploisTempsComponent } from './emplois-temps/emplois-temps.component';
import { HistoriqueComponent } from './historique/historique.component';
import { OptionsComponent } from './options/options.component';
import { SignupComponent } from './signup/signup.component';

export const routes: Routes = [
    { path: '', redirectTo: '/home', pathMatch: 'full' },
    { path: 'home', component: MainComponent },
    { path: 'student_login', component: LoginComponent },
    {
      path: 'student_dashboard',
        component: DashboardComponent,
        children: [
          { path: 'Accueil', component: AccueilEtdComponent },
          { path: 'abs&ratts', component: AbsRattEtdComponent },
          { path: 'Emplois', component: EmploisTempsComponent },
          { path: 'Historique', component: HistoriqueComponent },
          { path: 'Options', component:  OptionsComponent },
          { path: '', component:  AccueilEtdComponent }
        ]
      },
      { path: 'student_signup', component: SignupComponent },
      

];
