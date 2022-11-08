import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { BehaviorSubject, Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Pokemon } from 'src/models/pokemon.model';

const POKEMON_NOMBRES_PATH = environment.API_URL + 'pokemon/nombres';
const POKEMON_ENEMIGO_PATH = environment.API_URL + 'pokemon/enemigo';
const POKEMON_USUARIO_PATH = environment.API_URL + 'pokemon/usuario';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  constructor(private http: HttpClient){}

  private pokemonNombres: string[] = [];
  private pokemonNombres$: BehaviorSubject<string[]>= new BehaviorSubject<string[]>(this.pokemonNombres);

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

  // peticion a back end para obtener un pokemon enemigo aleatorio del mismo nivel
  getPokemonEnemigo(nivel: number): Observable<Pokemon> {
    return this.http.post<any>(POKEMON_ENEMIGO_PATH,{nivel});
  }

  // peticion a back end para obtener todos los datos de un pokemon mediante su nombre
  getPokemonUsuario(nombre: string,nivel: number): Observable<Pokemon> {
    return this.http.post<any>(POKEMON_USUARIO_PATH,{nombre,nivel});
  }

}
