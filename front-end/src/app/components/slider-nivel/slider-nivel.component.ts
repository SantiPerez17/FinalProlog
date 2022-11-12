import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { SeleccionService } from 'src/app/services/seleccion.service';

@Component({
  selector: 'app-slider-nivel',
  templateUrl: './slider-nivel.component.html',
  styleUrls: ['./slider-nivel.component.css']
})
export class SliderNivelComponent implements OnInit {

  nivel: number = 1;

  constructor(private router: Router, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
  }

  regresar(){
    this.router.navigateByUrl('seleccion/pokemon');
  }

  seleccionar(){
    this.seleccionService.setCloseAccordion(false);
    this.seleccionService.setNivel(this.nivel);
    this.seleccionService.notify();
    this.router.navigateByUrl('/');
  }

}
