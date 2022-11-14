import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MessageService, PrimeNGConfig } from 'primeng/api';
import { Pokemon } from './models/pokemon.model';
import { PokemonService } from './services/pokemon.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent{

  /*
  onSubmit(inputlvl: any, nombre: string){
    const nivel = inputlvl.value
    this.pokemonService.getPokemonUsuario(nombre,nivel).subscribe({
      next:(pokemon)=>{
        this.pokemonUsuario = pokemon;
        this.pokemonService.getPokemonEnemigo(nivel).subscribe({
          next:(pokemon)=>{
            this.pokemonEnemigo = pokemon;
            this.messageService.add({severity:'success', summary: 'exito', detail: 'Message Content'});
            // unblock card vs card
            setTimeout(()=>this.messageService.clear(),2000);
          }
        });
      }
      
    });
  }
  */

}
