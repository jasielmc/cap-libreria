using { cuid, managed } from '@sap/cds/common';

namespace db;

entity Libros : cuid, managed {
    titulo: String;
    autor: Association to Autores;
    paginas: Integer;
    capitulos: Composition of many Capitulos on capitulos.libro = $self;
}

entity Autores : cuid, managed {
    nombre: String;
    libros: Association to many Libros on libros.autor = $self;
}

entity Capitulos : cuid, managed {
    key libro: Association to Libros;
    numero: Integer;
    titulo: String;
    paginas: Integer;
}