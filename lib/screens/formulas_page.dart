import 'package:flutter/material.dart';
import 'package:fisicapp/screens/formula_detail_page.dart';
import '../data/formula_calculator.dart';

class FormulasPage extends StatelessWidget {
  final String category;

  const FormulasPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: formulas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(formulas[index].name),
            subtitle: Text(formulas[index].expression),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FormulaDetailPage(formula: formulas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
