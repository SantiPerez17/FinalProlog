import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GaleriaPokemonComponent } from './galeria-pokemon.component';

describe('GaleriaPokemonComponent', () => {
  let component: GaleriaPokemonComponent;
  let fixture: ComponentFixture<GaleriaPokemonComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GaleriaPokemonComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GaleriaPokemonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
