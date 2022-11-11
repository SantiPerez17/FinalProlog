import { Component, EventEmitter, OnDestroy, OnInit, Output } from '@angular/core';
import { MessageService, PrimeNGConfig } from 'primeng/api';
import { Subscription } from 'rxjs';
import { TarjetaPokemon } from 'src/app/models/tarjetaPokemon.model';
import { PokemonService } from 'src/app/services/pokemon.service';

@Component({
  selector: 'app-galeria-pokemon',
  templateUrl: './galeria-pokemon.component.html',
  styleUrls: ['./galeria-pokemon.component.css']
})
export class GaleriaPokemonComponent implements OnInit, OnDestroy {

  tarjetasPokemon: TarjetaPokemon[] = [];
  pokemonSeleccionado!: string;
  @Output() pokemonSeleccionadoEvent = new EventEmitter<string>();
  subscription!: Subscription;

  constructor(private pokemonService: PokemonService, 
              private messageService: MessageService,
              private primengConfig: PrimeNGConfig) { }

  ngOnInit(): void {
    this.primengConfig.ripple = true;
    this.subscription = this.pokemonService.getTarjetas$().subscribe({
      next:(tarjetas: TarjetaPokemon[])=>{
       this.tarjetasPokemon = tarjetas; 
      }
    });
    this.pokemonService.getTarjetas();
  }

  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }

  seleccionar(nombre: any){
    this.pokemonSeleccionado = nombre;
    this.pokemonSeleccionadoEvent.emit(this.pokemonSeleccionado);
  }

}
