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
  porcentajeBarraPs: number = 100;

  constructor(){}

  ngOnInit(): void {
    
  }

  // ajusta el porcentaje de ps actual que posee el pokemon
  ajustarPorcentaje(){
    this.porcentajeBarraPs = (this.psActual * 100) / this.pokemon.ps;
  }

}
