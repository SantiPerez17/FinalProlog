import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PrimeNGConfig } from 'primeng/api';
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

  seleccionActiva!: boolean;  //flag abrir o cerrar accordion 
  seleccionDeshabilitada: boolean = false;  // flag deshabilitar accordion
  subscripcionCloseAccordion!: Subscription;
  subscripcionPokemonSeleccionado!: Subscription;
  pokemonSeleccionado!: PokemonSeleccionado;
  pokemonEnemigo!: Pokemon;
  pokemonUsuario!: Pokemon;
  movimientoSeleccionado!: Movimiento | undefined;
  consolaTexto: string = '';

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
                  this.consolaTexto = '';
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
    this.seleccionDeshabilitada = true;  // deshabilitar accordion
    this.router.navigateByUrl('seleccion/pokemon');
  }

  onTabClose(event: any){
    this.router.navigateByUrl('/');
  }

  onAtacar(){
    if(this.movimientoSeleccionado){
      const movimientoAleatorio = this.pokemonEnemigo.movimientos[Math.floor(Math.random()*this.pokemonEnemigo.movimientos.length)];  //movimiento aleatorio del enemigo
      // primero ataca el usuario, si el enemigo sobrevive responde con su ataque
      if(this.pokemonUsuario.velocidad >= this.pokemonEnemigo.velocidad){
        this.atacar(this.pokemonUsuario,this.movimientoSeleccionado,movimientoAleatorio,this.pokemonEnemigo);
      }
      else{
         // primero ataca el enemigo, si el usuario sobrevive responde con su ataque
        this.atacar(this.pokemonEnemigo,movimientoAleatorio,this.movimientoSeleccionado,this.pokemonUsuario);
      }
      this.movimientoSeleccionado = undefined;  //deseleccion radio button para proximo movimiento
    }
  }

  // ajustar los ps y la barra de porcentaje de ps al recibir un moviemiento de ataque
  recibirAtaque(pokemon: Pokemon, danio: number){
    if(pokemon.psActual && pokemon.psActual - danio > 0){
      pokemon.psActual -= danio;
      pokemon.porcentajeBarraPs = Math.floor((pokemon.psActual * 100) / pokemon.ps);
    }
    else{
      pokemon.psActual = 0;  
      pokemon.porcentajeBarraPs = 0;
    }
  }

  reestablecerSeleccion(){
    this.seleccionActiva = false;
    this.seleccionDeshabilitada = false;
  }

  // realiza un movimiento de ataque, si el receptor sobrevive, contesta con su movimiento aleatorio
  atacar(atacante: Pokemon, movimientoAtacante: Movimiento,movimientoReceptor: Movimiento, receptor: Pokemon){
    this.pokemonService.atacar(atacante,movimientoAtacante,receptor).subscribe({
      next: (danio: number)=>{
        this.consolaTexto += atacante.nombre + ' ha utilizado ' + movimientoAtacante.nombre + '\n';
        this.recibirAtaque(receptor,danio);
        if(receptor.psActual && receptor.psActual > 0){  //sobrevive, responde con su movimiento
          this.pokemonService.atacar(receptor,movimientoReceptor,atacante).subscribe({
            next:(danio: number)=>{
              this.consolaTexto += receptor.nombre + ' ha utilizado ' + movimientoReceptor.nombre + '\n';
              this.recibirAtaque(atacante,danio);
              if(atacante.psActual === 0){
                this.consolaTexto += receptor.nombre + ' es el ganador del combate \n';
                this.reestablecerSeleccion();
              }
            },
            error: (e) =>{
              this.toastService.mostrarError(e);
            }
          });
        }
        else{
          this.consolaTexto += atacante.nombre + ' es el ganador del combate \n';
          this.reestablecerSeleccion();
        }
      },
      error: (e) =>{
        this.toastService.mostrarError(e);
      }
    });
  }

}
