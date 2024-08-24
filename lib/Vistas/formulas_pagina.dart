// formulas_pagina.dart

import 'package:flutter/material.dart';

import '../Data/paginas.dart';
import '../Formulas/formulas.dart';
import '../Modelos/formula.dart';
import '../Widgets/lista_formulas.dart';
import 'formula_detallada_pagina.dart';

class FormulasPagina extends StatelessWidget {
  final String category;

  const FormulasPagina({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    SeccionFormulas? section = formulasSections.firstWhere(
      (section) => section.nombre == category,
      orElse: () => SeccionFormulas(
          nombre: FormulasPaginaTexto.formulaNoEncontrada, groups: []),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: const TextStyle(color: Colors.black87)),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Color(0xFFE0E0FF)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Container(
        color: Colors.grey[100],
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // Desktop layout
              return Center(
                child: SizedBox(
                  width: 600,
                  child: _buildFormulaList(section, context),
                ),
              );
            } else {
              // Mobile layout
              return _buildFormulaList(section, context);
            }
          },
        ),
      ),
    );
  }

  Widget _buildFormulaList(SeccionFormulas section, BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      itemCount: section.groups.length,
      itemBuilder: (context, index) {
        final group = section.groups[index];
        return FormulaListItem(
          group: group,
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
    );
  }
}
