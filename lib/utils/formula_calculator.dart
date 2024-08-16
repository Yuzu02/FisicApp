import 'package:math_expressions/math_expressions.dart';
import '../models/formula.dart';

class FormulaCalculator {
  static String calculate(Formula formula, Map<String, double?> values) {
    // Encuentra la variable que falta
    String missingVariable = formula.variables.firstWhere(
      (variable) => values[variable] == null,
      orElse: () => '',
    );

    if (missingVariable.isEmpty) {
      return 'Todos los valores están completos. No hay nada que calcular.';
    }

    // Crea la expresión
    Parser p = Parser();
    p.parse(formula.expression);

    // Crea el contexto con las variables conocidas
    ContextModel cm = ContextModel();
    bool allVariablesBound = true;

    for (var variable in formula.variables) {
      if (variable != missingVariable) {
        if (values[variable] != null) {
          cm.bindVariable(Variable(variable), Number(values[variable]!));
        } else {
          allVariablesBound = false;
          return 'Falta el valor para la variable: $variable';
        }
      }
    }

    if (!allVariablesBound) {
      return 'Faltan algunos valores necesarios para el cálculo.';
    }

    // Evalúa la expresión
    try {
      // Resuelve para la variable que falta
      String solvedExpression =
          formula.expression.replaceAll(missingVariable, '(?)');
      Expression solvedExp = p.parse(solvedExpression);
      double result = solvedExp.evaluate(EvaluationType.REAL, cm);

      return '$missingVariable = ${result.toStringAsFixed(2)} ${formula.units[missingVariable]}';
    } catch (e) {
      return 'Error en el cálculo: $e';
    }
  }
}
