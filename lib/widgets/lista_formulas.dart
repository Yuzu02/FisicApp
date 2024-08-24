// formula_list_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../Modelos/formula.dart';

class FormulaListItem extends StatelessWidget {
  final GrupoFormulas group;
  final VoidCallback onTap;

  const FormulaListItem({
    super.key,
    required this.group,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mainFormula = group.formulas.first;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                group.nombre,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Container(
                alignment: Alignment.center,
                child: Math.tex(
                  mainFormula.etiqueta,
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
