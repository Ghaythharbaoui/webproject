import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AbsItemComponent } from './abs-item.component';

describe('AbsItemComponent', () => {
  let component: AbsItemComponent;
  let fixture: ComponentFixture<AbsItemComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AbsItemComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AbsItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
