import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { GaleriaPokemonComponent } from './components/galeria-pokemon/galeria-pokemon.component';
import { PokemonService } from './services/pokemon.service';

/* prime ng */
import {ButtonModule} from 'primeng/button';
import {SplitButtonModule} from 'primeng/splitbutton';
import { MessageService } from 'primeng/api';
import {ToastModule} from 'primeng/toast';
import {MessageModule} from 'primeng/message'
import {MessagesModule} from 'primeng/messages'
import { RippleModule } from 'primeng/ripple';
import {ToolbarModule} from 'primeng/toolbar';
import {DataViewModule} from 'primeng/dataview';
import {AccordionModule} from 'primeng/accordion';
import {ImageModule} from 'primeng/image';

@NgModule({
  declarations: [
    AppComponent,
    GaleriaPokemonComponent,
  ],
  imports: [
    BrowserAnimationsModule,
    BrowserModule,
    HttpClientModule,
    ButtonModule,
    SplitButtonModule,
    ToastModule,
    MessageModule,
    MessagesModule,
    RippleModule,
    ToolbarModule,
    DataViewModule,
    AccordionModule,
    ImageModule
  ],
  providers: [PokemonService, MessageService],
  bootstrap: [AppComponent]
})
export class AppModule { }
