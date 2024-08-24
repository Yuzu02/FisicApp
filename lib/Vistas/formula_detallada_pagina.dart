// lib/Vistas/formula_detallada_pagina.dart



import 'package:flutter/material.dart';

import '../Data/paginas.dart';
import '../Modelos/Widget/formulario_formula_props.dart';
import '../Modelos/formula.dart';
import '../Widgets/formulario_formula.dart';
import '../Widgets/instrucciones_formula.dart';

class FormulaDetalladaPagina extends StatelessWidget {
  final GrupoFormulas formulaGroup;

  const FormulaDetalladaPagina({super.key, required this.formulaGroup});

  @override
  Widget build(BuildContext context) {
    final FormularioFormulaProps props = FormularioFormulaProps(
      formulaGroup: formulaGroup,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(formulaGroup.nombre),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showInstructions(context),
          ),
        ],
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
                  child: FormularioFormula(props: props),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showInstructions(BuildContext context) {
    if (formulaGroup.instrucciones.isNotEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(HomePaginaTexto.instruccionesTitulo,
                textAlign: TextAlign.center),
            content:
                InstruccionesWidget(instrucciones: formulaGroup.instrucciones),
            actions: [
              TextButton(
                child: const Text('Cerrar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text(FormulaDetalladaPaginaTexto.instruccionesNoDisponibles)),
      );
    }
  }
}
