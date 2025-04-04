import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { RouterLink } from '@angular/router';
//import { AbsenceService } from '../absence.service'; // Assuming you'll create this service

@Component({
  selector: 'app-absence-request-form',
  imports: [RouterLink],
  templateUrl: './absence-request-form.component.html',
  styleUrls: ['./absence-request-form.component.css'],
})
export class AbsenceRequestFormComponent  {
 /*implements OnInit 
 
 absenceForm: FormGroup;
  uploadFile: File | null = null;

  constructor(
    private fb: FormBuilder,
    private absenceService: AbsenceService // Inject the service
  ) {
    this.absenceForm = this.fb.group({
      dateDebut: ['', Validators.required],
      heureDebut: ['', Validators.required],
      dateFin: ['', Validators.required],
      heureFin: ['', Validators.required],
      label: [''], // "Label" field
      justification: [''], // "Justification Optionnelle"
      uploadJustificatif: [null], // For file upload
    });
  }

  ngOnInit(): void {}

  onFileChange(event: any): void {
    if (event.target.files.length > 0) {
      this.uploadFile = event.target.files[0];
      this.absenceForm.patchValue({
        uploadJustificatif: this.uploadFile,
      });
    }
  }

  onSubmit(): void {
    if (this.absenceForm.valid) {
      const formData = new FormData();
      formData.append('dateDebut', this.absenceForm.get('dateDebut')?.value);
      formData.append('heureDebut', this.absenceForm.get('heureDebut')?.value);
      formData.append('dateFin', this.absenceForm.get('dateFin')?.value);
      formData.append('heureFin', this.absenceForm.get('heureFin')?.value);
      formData.append('label', this.absenceForm.get('label')?.value);
      formData.append(
        'justification',
        this.absenceForm.get('justification')?.value
      );
      if (this.uploadFile) {
        formData.append('justificatif', this.uploadFile, this.uploadFile.name);
      }

      this.absenceService.submitAbsenceRequest(formData).subscribe({
        // Call the service method
        next: (response) => {
          console.log('Absence request submitted successfully', response);
          // Handle success (e.g., show success message, clear form)
          this.absenceForm.reset();
          this.uploadFile = null;
        },
        error: (error) => {
          console.error('Error submitting absence request', error);
          // Handle error (e.g., show error message)
        },
      });
    } else {
      // Form is invalid, display validation errors if needed
      console.log('Form is invalid');
    }
  }

  onRemoveFile(): void {
    this.uploadFile = null;
    this.absenceForm.patchValue({ uploadJustificatif: null });
  }*/
}
