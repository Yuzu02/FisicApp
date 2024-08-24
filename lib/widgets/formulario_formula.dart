import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../Data/paginas.dart';
import '../Modelos/Widget/formulario_formula_props.dart';
import '../Modelos/formula.dart';
import '../Utilidades/manejador_formulario.dart';

class FormularioFormula extends StatefulWidget {
  final FormularioFormulaProps props;

  const FormularioFormula({super.key, required this.props});

  @override
  FormularioFormulaEstado createState() => FormularioFormulaEstado();
}

class FormularioFormulaEstado extends State<FormularioFormula> {
  late Formula _selectedFormula;
  final Map<String, TextEditingController> _controllers = {};
  String _result = '';
  final ManejadorFormulario _formManager = ManejadorFormulario();

  @override
  void initState() {
    super.initState();
    _selectedFormula = widget.props.formulaGroup.formulas.first;
    _formManager.initControllers(_controllers, _selectedFormula);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          FormulaDetalladaPaginaTexto.selectFormulaText,
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
          items: widget.props.formulaGroup.formulas.map((Formula formula) {
            return DropdownMenuItem<Formula>(
              value: formula,
              child: Text(
                '${FormulaDetalladaPaginaTexto.calculateText} ${formula.nombre}',
              ),
            );
          }).toList(),
          onChanged: (Formula? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedFormula = newValue;
                _formManager.initControllers(_controllers, _selectedFormula);
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
              FormulaDetalladaPaginaTexto.calculateText,
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
    setState(() {
      _result = _formManager.calculate(
          _controllers, _selectedFormula, _selectedFormula.constantes);
    });
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }
}
