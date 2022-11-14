import { Injectable } from '@angular/core';
import { MessageService } from 'primeng/api';

@Injectable({
  providedIn: 'root'
})
export class ToastService {

  constructor(private messageService: MessageService) { }

  mostrarError(mensaje: string){
    this.messageService.add({severity:'error', summary: 'error', detail: mensaje});
    setTimeout(()=>this.messageService.clear(),2000);
  }

  mostrarExito(mensaje: string){
    this.messageService.add({severity:'success', summary: 'exito', detail: mensaje});
    setTimeout(()=>this.messageService.clear(),2000);
  }

}
