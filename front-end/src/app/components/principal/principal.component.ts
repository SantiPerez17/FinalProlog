import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MessageService, PrimeNGConfig } from 'primeng/api';
import { Subscription } from 'rxjs';
import { Movimiento } from 'src/app/models/movimiento.model';
import { Pokemon } from 'src/app/models/pokemon.model';
import { PokemonSeleccionado } from 'src/app/models/pokemonSeleccionado.model';
import { PokemonService } from 'src/app/services/pokemon.service';
import { SeleccionService } from 'src/app/services/seleccion.service';
import { ToastService } from 'src/app/services/toast.service';

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
  movimientoSeleccionado!: Movimiento;

  constructor(private pokemonService: PokemonService,
              private seleccionService: SeleccionService,
              private toastService: ToastService,
              private router: Router, 
              private primengConfig: PrimeNGConfig) { }

  ngOnInit(): void {
    this.subscripcionCloseAccordion = this.seleccionService.getCloseAccordion$().subscribe({
      next: (flag) =>{
        this.seleccionActiva = flag;
      },
      error: (e) =>{
        this.toastService.mostrarError(e);
      }
    });
    this.subscripcionPokemonSeleccionado = this.seleccionService.getPokemonSeleccionado$().subscribe({
      next: (pokemonSeleccionado: PokemonSeleccionado) =>{
        if(pokemonSeleccionado.nombre && pokemonSeleccionado.nivel){
          this.pokemonService.getPokemonUsuario(pokemonSeleccionado.nombre, pokemonSeleccionado.nivel).subscribe({
            next:(pokemon: Pokemon) =>{
              this.pokemonUsuario = pokemon;
              this.pokemonService.getPokemonEnemigo(pokemon.nivel).subscribe({
                next:(pokemonEnemigo: Pokemon) => {
                  this.pokemonEnemigo = pokemonEnemigo;
                  this.toastService.mostrarExito('Combate listo para iniciar');
                },
                error: (e) =>{
                  this.toastService.mostrarError(e);
                }
              });
            },
            error: (e) =>{
              this.toastService.mostrarError(e);
            }
          });
        }
      },
      error: (e) =>{
        this.toastService.mostrarError(e);
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

  atacar(){
    const movimientoAleatorio = this.pokemonEnemigo.movimientos[Math.floor(Math.random()*this.pokemonEnemigo.movimientos.length)];  //movimiento aleatorio del enemigo
    this.pokemonService.atacar(this.pokemonUsuario,this.movimientoSeleccionado,this.pokemonEnemigo).subscribe({
      next: (res)=>{
        console.log(res);
      },
      error: (e) =>{
        this.toastService.mostrarError(e);
      }
    });
  }

}
