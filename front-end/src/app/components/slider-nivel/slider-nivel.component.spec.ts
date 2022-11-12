import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SliderNivelComponent } from './slider-nivel.component';

describe('SliderNivelComponent', () => {
  let component: SliderNivelComponent;
  let fixture: ComponentFixture<SliderNivelComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SliderNivelComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SliderNivelComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
