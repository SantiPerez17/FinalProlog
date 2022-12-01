import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { PokemonSeleccionado } from '../models/pokemonSeleccionado.model';

/* servicio que comunica el nombres y nivel seleccionado entre los componentes */

@Injectable({
  providedIn: 'root'
})
export class SeleccionService {

  // observable que notificara al componente que cierre el accordion
  private closeAccordion!: boolean 
  private closeAccordion$: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(this.closeAccordion);

  private pokemonSeleccionado: PokemonSeleccionado = { nombre: undefined, nivel: undefined};
  private pokemonSeleccionado$: BehaviorSubject<PokemonSeleccionado> = new BehaviorSubject<PokemonSeleccionado>(this.pokemonSeleccionado);

  constructor(){}

  getPokemonSeleccionado$(): Observable<PokemonSeleccionado>{
    return this.pokemonSeleccionado$.asObservable();
  }

  setNombre(nombre: string){
    this.pokemonSeleccionado.nombre = nombre;
  }

  setNivel(nivel: number){
    this.pokemonSeleccionado.nivel = nivel;
  }

  notify(){
    this.closeAccordion$.next(this.closeAccordion);
    this.pokemonSeleccionado$.next(this.pokemonSeleccionado);
  }

  getCloseAccordion$(): Observable<boolean>{
    return this.closeAccordion$.asObservable();
  }

  setCloseAccordion(flag: boolean){
    this.closeAccordion = flag;
  }
    
}
