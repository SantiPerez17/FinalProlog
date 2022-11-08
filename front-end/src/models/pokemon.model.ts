import { Movimiento } from "./movimiento.model";

export interface Pokemon{
    nombre: string;
    nivel: number;
    tipos: string[];
    ps: number;
    ataque: number;
    defensa: number;
    ataqueEspecial: number;
    defensaEspecial: number;
    velocidad: number;
    movimientos: Movimiento[];
}