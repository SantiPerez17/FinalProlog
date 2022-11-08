import { Component, OnDestroy, OnInit } from '@angular/core';
import { ppid } from 'process';
import { Subscription } from 'rxjs';
import { Pokemon } from 'src/models/pokemon.model';
import { PokemonService } from './services/pokemon.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit, OnDestroy {
  
  constructor(public pokemonService: PokemonService){}
  
  pokemonNombres: string[] = [];
  pokemonEnemigo!: Pokemon;
  pokemonUsuario!: Pokemon;
  nombrePokemonSeleccionado!: string;
  subscription!: Subscription;

  ngOnInit(){
    this.subscription = this.pokemonService.getPokemonNombres$().subscribe({
      next:(nombres: string[])=>{
       this.pokemonNombres = nombres; 
      }
    });
    this.pokemonService.getPokemonNombres();
    this.pokemonService.getPokemonEnemigo(10).subscribe({
      next:(pokemon)=>{
        this.pokemonEnemigo = pokemon;
      }
    });
  }

  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }

  onChangeSelect(event: any){
    this.nombrePokemonSeleccionado = event.target.value
  }

  onSubmit(input: any){
    const nivel = input.value
    this.pokemonService.getPokemonUsuario(this.nombrePokemonSeleccionado,nivel).subscribe({
      next:(pokemon)=>{
        this.pokemonUsuario = pokemon;
      }
    });
  }

}
