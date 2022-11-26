import { Component, OnInit } from '@angular/core';
import { MenuItem} from 'primeng/api';

@Component({
  selector: 'app-seleccion',
  templateUrl: './seleccion.component.html',
  styleUrls: ['./seleccion.component.css']
})
export class SeleccionComponent implements OnInit{

  indiceActivo: number = 0;
  items: MenuItem[] = [
    {
      label: 'Pokemon',
      routerLink: 'seleccion/pokemon'
    },
    {
      label: 'Nivel',
      routerLink: 'seleccion/nivel'
    },
];

  constructor() { }

  ngOnInit(): void {}

}
