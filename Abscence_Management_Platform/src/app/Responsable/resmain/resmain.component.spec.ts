import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ResmainComponent } from './resmain.component';

describe('ResmainComponent', () => {
  let component: ResmainComponent;
  let fixture: ComponentFixture<ResmainComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ResmainComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ResmainComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
