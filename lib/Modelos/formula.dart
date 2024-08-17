class Formula {
  final String nombre;
  final String
      etiqueta; //  To show the formula with resultado and = sign and the expresion
  final String expresion;
  final String resultado;
  final List<String> variables;
  final Map<String, String> unidades;
  final Map<String, double> constantes; // New field for constantes

  Formula({
    required this.nombre,
    required this.etiqueta,
    required this.expresion,
    required this.resultado,
    required this.variables,
    required this.unidades,
    this.constantes = const {}, // Initialize with an empty map by default
  });

  List<String> get allVariables =>
      [resultado, ...variables, ...constantes.keys];
}

class GrupoFormulas {
  final String nombre;
  final List<Formula> formulas;

  GrupoFormulas({
    required this.nombre,
    required this.formulas,
  });
}

class SeccionFormulas {
  final String nombre;
  final List<GrupoFormulas> groups;

  SeccionFormulas({
    required this.nombre,
    required this.groups,
  });
}
