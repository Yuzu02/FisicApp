import 'package:fisicapp/Formulas/formulas.dart';
import 'package:fisicapp/widgets/carta_categoria.dart';
import 'package:flutter/material.dart';
import 'formulas_pagina.dart';

class HomePagina extends StatelessWidget {
  const HomePagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FisicApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => showInstructions(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: formulasSections.length,
                itemBuilder: (context, index) {
                  final section = formulasSections[index];
                  // Asignar íconos según la sección
                  IconData icon;
                  switch (section.nombre) {
                    case 'Leyes de Newton':
                      icon = Icons.arrow_forward;
                      break;
                    case 'Electrónica':
                      icon = Icons.electrical_services;
                      break;
                    case 'Fórmulas Generales':
                      icon = Icons.functions;
                      break;
                    default:
                      icon = Icons.calculate;
                  }

                  return CategoryCard(
                    title: section.nombre,
                    icon: icon,
                    onTap: () =>
                        navigateToFormulasPage(context, section.nombre),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Instrucciones'),
          content: const Text(
              'Seleccione una categoría y luego una fórmula para calcular.'),
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
  }

  void navigateToFormulasPage(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormulasPagina(category: category),
      ),
    );
  }
}
