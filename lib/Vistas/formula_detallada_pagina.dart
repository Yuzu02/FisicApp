import 'package:fisicapp/widgets/formulario_formula.dart';
import 'package:flutter/material.dart';
import 'package:fisicapp/Modelos/formula.dart';

class FormulaDetalladaPagina extends StatelessWidget {
  final GrupoFormulas formulaGroup;

  const FormulaDetalladaPagina({super.key, required this.formulaGroup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(formulaGroup.nombre),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Theme.of(context).primaryColor, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FormularioFormula(formulaGroup: formulaGroup),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
