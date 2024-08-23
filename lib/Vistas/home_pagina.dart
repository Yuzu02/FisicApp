// lib/Vistas/home_pagina.dart

import 'package:fisicapp/Data/Extra/iconos.dart';
import 'package:fisicapp/Formulas/formulas.dart';
import 'package:fisicapp/Modelos/widget/carta_categoria_props.dart';
import 'package:fisicapp/Widgets/acerca_equipo.dart';
import 'package:fisicapp/Widgets/carta_categoria.dart';
import 'package:fisicapp/Widgets/instrucciones_generales.dart';
import 'package:flutter/material.dart';
import 'formulas_pagina.dart';

class HomePagina extends StatelessWidget {
  const HomePagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('FisicApp', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white.withOpacity(0.7),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.black87),
            onPressed: () => _showInstructions(context),
          ),
          IconButton(
            icon: const Icon(Icons.group, color: Colors.black87),
            onPressed: () => _showAboutTeam(context),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Categorías de Fórmulas',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: kSpacing),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final isDesktop = constraints.maxWidth > 600;
                      final crossAxisCount =
                          _getCrossAxisCount(constraints.maxWidth);
                      final childAspectRatio = isDesktop ? 1.5 : 1.0;

                      return Center(
                        child: SizedBox(
                          width: isDesktop ? 1000 : constraints.maxWidth,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              crossAxisSpacing: kSpacing,
                              mainAxisSpacing: kSpacing,
                              childAspectRatio: childAspectRatio,
                            ),
                            itemCount: formulasSections.length,
                            itemBuilder: (context, index) {
                              final section = formulasSections[index];
                              final IconData icon = getIconForSection(section
                                  .nombre); // Usa la función de utilidades

                              return CategoryCard(
                                props: CategoryCardProps(
                                  title: section.nombre,
                                  icon: icon,
                                  onTap: () => _navigateToFormulasPage(
                                      context, section.nombre),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int _getCrossAxisCount(double width) {
    if (width > 1200) {
      return 4;
    } else if (width > 900) {
      return 3;
    } else if (width > 600) {
      return 2;
    } else {
      return 2;
    }
  }

  void _navigateToFormulasPage(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormulasPagina(category: category),
      ),
    );
  }

  void _showInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => const InstructionsDialog(),
    );
  }

  void _showAboutTeam(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => const AcercaEquipo(),
    );
  }
}

// Constantes
const double kPadding = 16.0;
const double kSpacing = 16.0;
