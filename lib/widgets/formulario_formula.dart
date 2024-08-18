import 'package:fisicapp/Modelos/formula.dart';
import 'package:fisicapp/Utilidades/calculadora_formula.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class FormularioFormula extends StatefulWidget {
  final GrupoFormulas formulaGroup;

  const FormularioFormula({super.key, required this.formulaGroup});

  @override
  FormularioFormulaEstado createState() => FormularioFormulaEstado();
}

class FormularioFormulaEstado extends State<FormularioFormula> {
  late Formula _selectedFormula;
  final Map<String, TextEditingController> _controllers = {};
  String _result = '';
  final CalculadoraFormula _calculator = CalculadoraFormula();

  @override
  void initState() {
    super.initState();
    _selectedFormula = widget.formulaGroup.formulas.first;
    _initControllers();
  }

  void _initControllers() {
    _controllers.clear();
    for (var variable in _selectedFormula.allVariables) {
      _controllers[variable] = TextEditingController();

      // If the variable is a constant, set its value in scientific notation
      if (_selectedFormula.constantes.containsKey(variable)) {
        _controllers[variable]!.text =
            _selectedFormula.constantes[variable]!.toStringAsExponential(2);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Selecciona la fórmula',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<Formula>(
          value: _selectedFormula,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          items: widget.formulaGroup.formulas.map((Formula formula) {
            return DropdownMenuItem<Formula>(
              value: formula,
              child: Text('Calcular ${formula.nombre}'),
            );
          }).toList(),
          onChanged: (Formula? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedFormula = newValue;
                _initControllers();
                _result = '';
              });
            }
          },
        ),
        const SizedBox(height: 20),
        Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Math.tex(
                _selectedFormula.etiqueta,
                mathStyle: MathStyle.display,
                textScaleFactor: 1.5,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ..._buildInputFields(),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _calculate,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Calcular',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (_result.isNotEmpty)
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.green[100],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _result,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  List<Widget> _buildInputFields() {
    return _selectedFormula.variables.map((variable) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: TextFormField(
          controller: _controllers[variable],
          decoration: InputDecoration(
            labelText: '$variable (${_selectedFormula.unidades[variable]})',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          keyboardType: TextInputType.number,
        ),
      );
    }).toList();
  }

  void _calculate() {
    Map<String, double> values = {};
    bool allFilled = true;

    // Collect values from the input fields
    for (var variable in [
      ..._selectedFormula.variables,
      ..._selectedFormula.constantes.keys
    ]) {
      if (_controllers[variable] == null) {
        allFilled = false;
        break;
      }

      if (_controllers[variable]!.text.isNotEmpty) {
        values[variable] = double.tryParse(_controllers[variable]!.text) ?? 0.0;
      } else {
        allFilled = false;
        break;
      }
    }

    if (allFilled) {
      try {
        final combinedValues = {...values, ..._selectedFormula.constantes};
        double result = _calculator.evaluate(_selectedFormula.expresion,
            combinedValues, _selectedFormula.constantes);

        // Determine the format for the result
        String resultString;
        if (result.abs() >= 1e3 || result.abs() < 1e-3) {
          resultString = result.toStringAsExponential(2);
        } else {
          resultString = result.toStringAsFixed(2);
        }

        setState(() {
          _result =
              '${_selectedFormula.resultado} = $resultString ${_selectedFormula.unidades[_selectedFormula.resultado]}';
        });
      } catch (e) {
        setState(() {
          _result = 'Error al evaluar la fórmula: ${e.toString()}';
        });
      }
    } else {
      setState(() {
        _result = 'Por favor, llena todos los campos';
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }
}
