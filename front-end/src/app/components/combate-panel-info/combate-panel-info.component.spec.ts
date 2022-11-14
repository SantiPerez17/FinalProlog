import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CombatePanelInfoComponent } from './combate-panel-info.component';

describe('CombatePanelInfoComponent', () => {
  let component: CombatePanelInfoComponent;
  let fixture: ComponentFixture<CombatePanelInfoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CombatePanelInfoComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CombatePanelInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
