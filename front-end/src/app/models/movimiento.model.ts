enum Categoria {
    FISICO,
    ESPECIAL
}

export interface Movimiento{
    nombre: string;
    tipo: string;
    categoria: Categoria;
    potenciaBase: number;
}