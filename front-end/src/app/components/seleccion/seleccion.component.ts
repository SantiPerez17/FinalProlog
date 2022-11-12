import { Component, OnDestroy, OnInit } from '@angular/core';
import { MenuItem, MessageService } from 'primeng/api';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-seleccion',
  templateUrl: './seleccion.component.html',
  styleUrls: ['./seleccion.component.css']
})
export class SeleccionComponent implements OnInit,OnDestroy {

  subscription!: Subscription;
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

  constructor(private messageService: MessageService) { }

  ngOnInit(): void {
    /*
    this.subscription = this.ticketService.paymentComplete$.subscribe((personalInformation) =>{
      this.messageService.add({severity:'success', summary:'Order submitted', detail: 'Dear, ' + personalInformation.firstname + ' ' + personalInformation.lastname + ' your order completed.'});
  });*/
  }

  ngOnDestroy() {
    //this.subscription.unsubscribe();
}

}
