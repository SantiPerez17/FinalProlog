import { Component, EventEmitter, OnDestroy, OnInit, Output } from '@angular/core';
import { Router } from '@angular/router';
import { PrimeNGConfig } from 'primeng/api';
import { Subscription } from 'rxjs';
import { TarjetaPokemon } from 'src/app/models/tarjetaPokemon.model';
import { PokemonService } from 'src/app/services/pokemon.service';
import { SeleccionService } from 'src/app/services/seleccion.service';

@Component({
  selector: 'app-galeria-pokemon',
  templateUrl: './galeria-pokemon.component.html',
  styleUrls: ['./galeria-pokemon.component.css']
})
export class GaleriaPokemonComponent implements OnInit, OnDestroy {

  tarjetasPokemon: TarjetaPokemon[] = [];
  subscription!: Subscription;
  busqueda = '';
  busquedaTipo = '';
  tipos = ['planta','agua','fuego','electrico','tierra','roca','dragon',
  'hada','psiquico','bicho','lucha','normal','acero','hielo','siniestro','fantasma','volador','veneno'];

  constructor(private pokemonService: PokemonService, 
              private seleccionService: SeleccionService,
              private router: Router,
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
    this.seleccionService.setNombre(nombre);
    this.router.navigateByUrl('seleccion/nivel');
  }

  buscar(event: any): void{
    this.busqueda = event.target.value;
  }

  clear(){
    this.busquedaTipo = '';
  }

}
