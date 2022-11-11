import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { Pokemon } from 'src/models/pokemon.model';
import { PokemonService } from './services/pokemon.service';
import {ButtonModule} from 'primeng/button';
import {SplitButtonModule} from 'primeng/splitbutton';
import {MessageService, PrimeNGConfig} from 'primeng/api';
import {ToastModule} from 'primeng/toast';
import { RippleModule } from 'primeng/ripple';
import {ToolbarModule} from 'primeng/toolbar';
import {DataViewModule} from 'primeng/dataview';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit, OnDestroy {
  
  constructor(public pokemonService: PokemonService, 
              private messageService: MessageService,
              private primengConfig: PrimeNGConfig){}
  
  pokemonNombres: string[] = [];
  pokemonEnemigo!: Pokemon;
  pokemonUsuario!: Pokemon;
  subscription!: Subscription;

  ngOnInit(){
    this.primengConfig.ripple = true;
    this.subscription = this.pokemonService.getPokemonNombres$().subscribe({
      next:(nombres: string[])=>{
       this.pokemonNombres = nombres; 
      }
    });
    this.pokemonService.getPokemonNombres();
  }

  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }

  onSubmit(inputlvl: any, nombre: string){
    const nivel = inputlvl.value
    this.pokemonService.getPokemonUsuario(nombre,nivel).subscribe({
      next:(pokemon)=>{
        this.pokemonUsuario = pokemon;
        this.pokemonService.getPokemonEnemigo(nivel).subscribe({
          next:(pokemon)=>{
            this.pokemonEnemigo = pokemon;
            this.messageService.add({severity:'success', summary: 'exito', detail: 'Message Content'});
            // hide selection
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

}
