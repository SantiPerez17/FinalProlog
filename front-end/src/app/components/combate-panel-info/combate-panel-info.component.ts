import { Component, Input, OnInit } from '@angular/core';
import { Pokemon } from 'src/app/models/pokemon.model';

@Component({
  selector: 'app-combate-panel-info',
  templateUrl: './combate-panel-info.component.html',
  styleUrls: ['./combate-panel-info.component.css']
})
export class CombatePanelInfoComponent implements OnInit {

  @Input() pokemon!: Pokemon;
  @Input() psActual!: number;
  @Input() porcentajeBarraPs!: number;

  constructor(){}

  ngOnInit(): void {
    
  }

}
