import { Component, ElementRef, OnDestroy, OnInit, TemplateRef, ViewChild } from '@angular/core';
import { Subscription } from 'rxjs';
import { Pokemon } from 'src/app/models/pokemon.model';
import { PokemonService } from './services/pokemon.service';
import {MessageService, PrimeNGConfig} from 'primeng/api';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  
  constructor(public pokemonService: PokemonService, 
              private messageService: MessageService,
              private primengConfig: PrimeNGConfig){}

  pokemonEnemigo!: Pokemon;
  pokemonUsuario!: Pokemon;
  seleccionActiva = false;
  pokemonSeleccionado: string = 'Seleccionar Pokemon';

  ngOnInit(){
  }

  nuevoPokemonSeleccionado(event: string){
    this.pokemonSeleccionado = event
    this.seleccionActiva = false;  // cierra el accordion
  }

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
      },
      error:(e)=>{
        this.messageService.add({severity:'error', summary: 'error', detail: 'Message Content'});
        setTimeout(()=>this.messageService.clear(),2000);
      }
      
    });
  }
  */

}
