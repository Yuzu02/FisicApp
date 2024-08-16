import 'package:flutter/material.dart';
import '../models/formula.dart';
import '../widgets/formula_input_field.dart';
import '../utils/formula_calculator.dart';

class FormulaDetailPage extends StatefulWidget {
  final Formula formula;

  const FormulaDetailPage({super.key, required this.formula});

  @override
  FormulaDetailPageState createState() => FormulaDetailPageState();
}

class FormulaDetailPageState extends State<FormulaDetailPage> {
  Map<String, double?> values = {};
  String result = '';

  @override
  void initState() {
    super.initState();
    for (var variable in widget.formula.variables) {
      values[variable] = null;
    }
  }

  void updateValue(String variable, String value) {
    setState(() {
      values[variable] = double.tryParse(value);
    });
  }

  void calculate() {
    setState(() {
      result = FormulaCalculator.calculate(widget.formula, values);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular ${widget.formula.name}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.formula.expression,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...widget.formula.variables.map((variable) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: FormulaInputField(
                  label: variable,
                  unit: widget.formula.units[variable]!,
                  onChanged: (value) => updateValue(variable, value),
                ),
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              result,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
