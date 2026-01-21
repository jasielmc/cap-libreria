using { 
    db.Libros as Libros,
    db.Autores as Autores,
    db.Capitulos as Capitulos
} from '../db/schema';


service MiLibreria {

    entity Libro as projection on Libros;
    entity Autor as projection on Autores;
    entity Capitulo as projection on Capitulos;

}