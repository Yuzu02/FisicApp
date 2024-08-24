

import 'package:flutter/material.dart';

import '../Modelos/formula.dart';
import 'calculadora_formula.dart';

class ManejadorFormulario {
  final CalculadoraFormula _calculator = CalculadoraFormula();

  void initControllers(
      Map<String, TextEditingController> controllers, Formula selectedFormula) {
    controllers.clear();
    for (var variable in selectedFormula.allVariables) {
      controllers[variable] = TextEditingController();

      if (selectedFormula.constantes.containsKey(variable)) {
        controllers[variable]!.text =
            selectedFormula.constantes[variable]!.toStringAsExponential(4);
      }
    }
  }

  String calculate(Map<String, TextEditingController> controllers,
      Formula selectedFormula, Map<String, double> constants) {
    Map<String, double> values = {};
    bool allFilled = true;

    for (var variable in [...selectedFormula.variables, ...constants.keys]) {
      if (controllers[variable] == null) {
        allFilled = false;
        break;
      }

      if (controllers[variable]!.text.isNotEmpty) {
        values[variable] = double.tryParse(controllers[variable]!.text) ?? 0.0;
      } else {
        allFilled = false;
        break;
      }
    }

    if (allFilled) {
      try {
        final combinedValues = {...values, ...constants};
        double result = _calculator.evaluate(
            selectedFormula.expresion, combinedValues, constants);

        String resultString;
        if (result.abs() >= 1e3 || result.abs() < 1e-3) {
          resultString = result.toStringAsExponential(2);
        } else {
          resultString = result.toStringAsFixed(2);
        }

        return '${selectedFormula.resultado} = $resultString ${selectedFormula.unidades[selectedFormula.resultado]}';
      } catch (e) {
        return 'Error: ${e.toString()}';
      }
    } else {
      return 'Por favor, rellena todos los campos';
    }
  }
}
