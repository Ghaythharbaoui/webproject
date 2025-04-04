import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-catch-up-request-form',
  imports: [],
  templateUrl: './catch-up-request-form.component.html',
  styleUrl: './catch-up-request-form.component.css'
})
export class CatchUpRequestFormComponent implements OnInit{
  makeupRequestForm: FormGroup;

  constructor(
    private fb: FormBuilder,
    //private makeupRequestService: MakeupRequestService // Inject the service
  ) {
    this.makeupRequestForm = this.fb.group({
      dateDebut: ['', Validators.required],
      dateFin: ['', Validators.required],
      classe: ['', Validators.required],
      specialite: ['', Validators.required],
      groupe: ['', Validators.required],
      idAbsence: [''], // "id Absence" field - optional, based on UI
      label: [''], // "Label" field
      commentaire: [''], // "Commentaire Optionnelle"
    });
  }

  ngOnInit(): void {}

  onSubmit(): void {
    /*if (this.makeupRequestForm.valid) {
      this.makeupRequestService.submitMakeupRequest(this.makeupRequestForm.value).subscribe({ // Call the service method
        next: (response) => {
          console.log('Makeup request submitted successfully', response);
          // Handle success (e.g., show success message, clear form)
          this.makeupRequestForm.reset();
        },
        error: (error) => {
          console.error('Error submitting makeup request', error);
          // Handle error (e.g., show error message)
        }
      });
    } else {
      // Form is invalid, display validation errors if needed
      console.log('Form is invalid');
    }*/
  }
}
