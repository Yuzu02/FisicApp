import 'package:expressions/expressions.dart';

class CalculadoraFormula {
  // Method to evaluate the formula
  double evaluate(String expresion, Map<String, double> values,
      Map<String, double> constantes) {
    // Create a map of variables with their values
    final Map<String, dynamic> evaluatedVariables = {};
    values.forEach((key, value) {
      evaluatedVariables[key] = value; // Use the values directly
    });

    // Add constants to evaluated variables
    constantes.forEach((key, value) {
      evaluatedVariables[key] = value; // Add constants as well
    });

    try {
      // Create an expression from the string
      final Expression exp = Expression.parse(expresion);

      // Evaluate the expression with the variable values
      const evaluator = ExpressionEvaluator();
      final result = evaluator.eval(exp, evaluatedVariables);

      // Return the result as double
      return result is double ? result : 0.0; // Ensure the result is a double
    } catch (e) {
      throw Exception('Failed to evaluate expresion: $e');
    }
  }
}
