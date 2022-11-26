import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { GaleriaPokemonComponent } from './components/galeria-pokemon/galeria-pokemon.component';
import { SliderNivelComponent } from './components/slider-nivel/slider-nivel.component';
import { PrincipalComponent } from './components/principal/principal.component';

// modulo de navegacion
// determina que componente atiende/responde a una determinada ruta

const routes: Routes = [
  { path:'', component:PrincipalComponent,
    children:[
      { path:'seleccion/pokemon', component:GaleriaPokemonComponent},
      { path:'seleccion/nivel', component:SliderNivelComponent}
    ]
  }
];

@NgModule({
  declarations: [],
  imports: [
    RouterModule.forRoot(routes),
    CommonModule
  ],
  exports:[RouterModule]
})
export class AppRoutingModule { }
