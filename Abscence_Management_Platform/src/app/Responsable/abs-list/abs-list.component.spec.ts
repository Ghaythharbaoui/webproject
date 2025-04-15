import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AbsListComponent } from './abs-list.component';

describe('AbsListComponent', () => {
  let component: AbsListComponent;
  let fixture: ComponentFixture<AbsListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AbsListComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AbsListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
