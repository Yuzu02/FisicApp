// ? Clase que representa una formula ( Un solo despeje ) con sus variables, unidades y constantes

import 'package:fisicapp/Modelos/instrucciones_formula.dart';

class Formula {
  final String nombre;
  final String
      etiqueta; //  ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
  final String expresion;
  final String resultado;
  final List<String> variables;
  final Map<String, String> unidades;
  final Map<String, double>
      constantes; // ?  Las constantes que se usaran en la formula con sus valores y símbolos ( Si es que tiene )

  Formula({
    required this.nombre,
    required this.etiqueta,
    required this.expresion,
    required this.resultado,
    required this.variables,
    required this.unidades,
    this.constantes = const {},
  });

// ?  Retorna una lista con todas las variables que se usan en la formula
  List<String> get allVariables =>
      [resultado, ...variables, ...constantes.keys];
}

// ?  Clase que representa un grupo de formulas ( Un conjunto de despejes ) con su nombre, instrucciones y una lista de formulas ( Todos los despejes posibles de dicha formula )
class GrupoFormulas {
  final String nombre;
  final List<InstruccionFormula> instrucciones;
  final List<Formula> formulas;

  GrupoFormulas({
    required this.nombre,
    required this.instrucciones,
    required this.formulas,
  });
}

// ?  Clase que representa una sección de formulas ( Un conjunto de grupos de formulas de la misma indole ) con todos los despejes posibles de dicha grupos
class SeccionFormulas {
  final String nombre;
  final List<GrupoFormulas> groups;

  SeccionFormulas({
    required this.nombre,
    required this.groups,
  });
}
