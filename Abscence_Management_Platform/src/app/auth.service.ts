// app/services/auth.service.ts
import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { tap, switchMap } from 'rxjs/operators';
import { BehaviorSubject, of } from 'rxjs';

@Injectable({ providedIn: 'root' })
export class AuthService {
  private _role$ = new BehaviorSubject<string|null>(null);
  readonly role$ = this._role$.asObservable();

  constructor(private http: HttpClient) {}

  login(email: string, password: string) {
    const body = new HttpParams()
      .set('username', email)
      .set('password', password);
  
    return this.http
      .post(
        '/api/auth/login',           // <— matches loginProcessingUrl
        body.toString(),
        {
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          withCredentials: true,
          observe: 'response'         // so you can see 200 vs redirect
        }
      )
      .pipe(
        switchMap(() => this.fetchProfile())
      );
  }
  
  
  fetchProfile() {
    return this.http.get<{ roles: string[] }>('/api/auth/me', {
      withCredentials: true
    }).pipe(
      tap(profile => {
        const role = profile.roles[0]?.replace('ROLE_', '') || null;
        this._role$.next(role);
      })
    );
  }
  
  logout() {
    return this.http.post('/api/auth/logout', {}, {
      withCredentials: true
    }).pipe(
      tap(() => this._role$.next(null))
    );
  }
  


  get role(): string | null {
    return this._role$.value;
  }
}
