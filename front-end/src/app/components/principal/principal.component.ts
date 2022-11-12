import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MessageService, PrimeNGConfig } from 'primeng/api';
import { Subscription } from 'rxjs';
import { Pokemon } from 'src/app/models/pokemon.model';
import { PokemonSeleccionado } from 'src/app/models/pokemonSeleccionado.model';
import { PokemonService } from 'src/app/services/pokemon.service';
import { SeleccionService } from 'src/app/services/seleccion.service';

@Component({
  selector: 'app-principal',
  templateUrl: './principal.component.html',
  styleUrls: ['./principal.component.css']
})
export class PrincipalComponent implements OnInit, OnDestroy {

  seleccionActiva: boolean = false;
  subscripcionCloseAccordion!: Subscription;
  subscripcionPokemonSeleccionado!: Subscription;
  pokemonSeleccionado!: PokemonSeleccionado;
  pokemonEnemigo!: Pokemon;
  pokemonUsuario!: Pokemon;

  constructor(private pokemonService: PokemonService,
              private seleccionService: SeleccionService,
              private router: Router, 
              private messageService: MessageService,
              private primengConfig: PrimeNGConfig) { }

  ngOnInit(): void {
    this.subscripcionCloseAccordion = this.seleccionService.getCloseAccordion$().subscribe({
      next: (flag) =>{
        this.seleccionActiva = flag;
      }
    });
    this.subscripcionPokemonSeleccionado = this.seleccionService.getPokemonSeleccionado$().subscribe({
      next: (pokemonSeleccionado) =>{
        this.pokemonSeleccionado = {
          nombre: pokemonSeleccionado.nombre,
          nivel: pokemonSeleccionado.nivel
        };
      }
    });

  }

  ngOnDestroy(){
    this.subscripcionCloseAccordion.unsubscribe();
    this.subscripcionPokemonSeleccionado.unsubscribe();
  }

  onTabOpen(event: any){
    this.router.navigateByUrl('seleccion/pokemon');
  }

  onTabClose(event: any){
    this.router.navigateByUrl('/');
  }

}
