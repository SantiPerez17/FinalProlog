import { Component, OnInit } from '@angular/core';
import { PokemonService } from './pokemon.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  
  constructor(public pokemonesService: PokemonService){}
  
  listPokemones:any;

  title = 'pokemones'

  ngOnInit() {
    this.listPokemones = this.pokemonesService.getPokemones();
  }
}
