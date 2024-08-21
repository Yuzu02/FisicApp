// ? Clase que representa un item de explicación con su fórmula en LaTeX y su descripción en texto para usar en la Instrucción de una fórmula
class ExplicacionItem {
  final String latex;
  final String texto;

  ExplicacionItem({required this.latex, required this.texto});
}

// ? Clase que representa una instrucción de un grupo de fórmulas ( Un conjunto de despejes ) con su descripción, fórmula en LaTeX y explicaciones de cada miembro
class InstruccionFormula {
  final String descripcion; // Breve descripción de la fórmula
  final String latexFormula; // Fórmula en LaTeX
  final List<ExplicacionItem> explicaciones; // Explicaciones de cada miembro

  InstruccionFormula({
    required this.descripcion,
    required this.latexFormula,
    required this.explicaciones,

    // ? Toda instrucción debe tener una descripción, una fórmula en LaTeX y explicaciones de cada miembro
  });
}

// ? Clase que representa un grupo de instrucciones de fórmulas
class Instruccion {
  final List<InstruccionFormula> segundaLeyNewton;
  final List<InstruccionFormula> leyDeOhm;
  final List<InstruccionFormula> leyDeCoulomb;
  final List<InstruccionFormula> velocidad;
  final List<InstruccionFormula> inercia;
  final List<InstruccionFormula> accionReaccion;
  final List<InstruccionFormula> gravitacionUniversal;
  final List<InstruccionFormula> velocidadMedia;
  final List<InstruccionFormula> aceleracionMedia;
  final List<InstruccionFormula> rapidez;
  final List<InstruccionFormula> movimientoRectilineo;

  // ! Cada vez que se agregue una instrucción nueva para un grupo de formulas se debe agregar un parámetro en el constructor de la clase ( arriba de este comentario ) y asignarle el valor correspondiente , luego ir al archivo instrucciones.dart en la carpeta Formulas y agregar la instrucción correspondiente

  //* Ejemplo
  // final List<InstruccionFormula> nuevaInstruccion;

  Instruccion({
    required this.segundaLeyNewton,
    required this.leyDeOhm,
    required this.leyDeCoulomb,
    required this.velocidad,
    required this.inercia,
    required this.accionReaccion,
    required this.gravitacionUniversal,
    required this.velocidadMedia,
    required this.aceleracionMedia,
    required this.rapidez,
    required this.movimientoRectilineo,

    //* Ejemplo
    // required this.nuevaInstruccion,
  });
}
