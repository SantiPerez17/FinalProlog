import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { BehaviorSubject, map, Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Pokemon } from 'src/app/models/pokemon.model';
import { TarjetaPokemon } from '../models/tarjetaPokemon.model';
import { Movimiento } from '../models/movimiento.model';

const POKEMON_NOMBRES_PATH = environment.API_URL + 'pokemon/nombres';
const POKEMON_TARJETAS_PATH = environment.API_URL + 'pokemon/tarjetas';
const POKEMON_ENEMIGO_PATH = environment.API_URL + 'pokemon/enemigo';
const POKEMON_USUARIO_PATH = environment.API_URL + 'pokemon/usuario';
const POKEMON_ATACAR_PATH = environment.API_URL + 'pokemon/atacar';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  constructor(private http: HttpClient){}

  private pokemonNombres: string[] = [];
  private pokemonNombres$: BehaviorSubject<string[]>= new BehaviorSubject<string[]>(this.pokemonNombres);

  private tarjetas: TarjetaPokemon[] = [];
  private tarjetas$: BehaviorSubject<TarjetaPokemon[]>= new BehaviorSubject<TarjetaPokemon[]>(this.tarjetas);

  getPokemonNombres$(): Observable<string[]>{
    return this.pokemonNombres$.asObservable();
  }

  // si no hay datos en cache realiza la peticion http
  // notifica a los observers del nuevo listado
  getPokemonNombres(){
    if(this.pokemonNombres.length === 0){
      this.http.get<{nombres: string[]}>(POKEMON_NOMBRES_PATH).subscribe({
        next:(res)=>{
          this.pokemonNombres = res.nombres;
          this.pokemonNombres$.next(this.pokemonNombres);
        }
      });
    }
  }

  getTarjetas$(): Observable<TarjetaPokemon[]>{
    return this.tarjetas$.asObservable();
  }

  // si no hay datos en cache realiza la peticion http
  // notifica a los observers del nuevo listado
  getTarjetas(){
    if(this.tarjetas.length === 0){
      this.http.get<{tarjetas: TarjetaPokemon[]}>(POKEMON_TARJETAS_PATH).subscribe({
        next:(res)=>{
          this.tarjetas = res.tarjetas;
          this.tarjetas$.next(this.tarjetas);
        }
      });
    }
  }

  // peticion a back end para obtener un pokemon enemigo aleatorio del mismo nivel
  getPokemonEnemigo(nivel: number): Observable<Pokemon> {
    return this.http.post<Pokemon>(POKEMON_ENEMIGO_PATH,{nivel})
      .pipe(map((pokemon: Pokemon)=>{
        // inicialmente vida llena
        pokemon.psActual = pokemon.ps;
        pokemon.porcentajeBarraPs = 100;
        return pokemon;
      }));
  }

  // peticion a back end para obtener todos los datos de un pokemon mediante su nombre
  getPokemonUsuario(nombre: string,nivel: number): Observable<Pokemon> {
    return this.http.post<Pokemon>(POKEMON_USUARIO_PATH,{nombre,nivel})
      .pipe(map((pokemon: Pokemon)=>{
        // inicialmente vida llena
        pokemon.psActual = pokemon.ps;
        pokemon.porcentajeBarraPs = 100;
        return pokemon;
      }));
  }

  // peticion a back end para obtener el daño de un movimiento
  atacar(atacante: Pokemon, movimiento: Movimiento, receptor: Pokemon): Observable<number>{
    return this.http.post<{danio: number}>(POKEMON_ATACAR_PATH,{atacante,movimiento,receptor})
      .pipe(map((res)=>{
      return res.danio;
    }));
  }

}
