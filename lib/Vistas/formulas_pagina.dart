import 'package:fisicapp/Formulas/formulas.dart';
import 'package:fisicapp/Modelos/formula.dart';
import 'package:fisicapp/Vistas/formula_detallada_pagina.dart';
import 'package:flutter/material.dart';

class FormulasPagina extends StatelessWidget {
  final String category;

  const FormulasPagina({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Encuentra la sección de fórmulas correspondiente a la categoría
    SeccionFormulas? section = formulasSections.firstWhere(
      (section) => section.nombre == category,
      orElse: () => SeccionFormulas(nombre: 'No encontrado', groups: []),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: section.groups.length,
        itemBuilder: (context, index) {
          final group = section.groups[index];
          final mainFormula = group.formulas.first; // Despeje principal

          return ListTile(
            title: Text(group.nombre),
            subtitle: Text(mainFormula.etiqueta),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FormulaDetalladaPagina(formulaGroup: group),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
