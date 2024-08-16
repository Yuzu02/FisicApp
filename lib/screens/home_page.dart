import 'package:flutter/material.dart';
import 'formulas_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FisicApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showInstructions(context);
              },
              child: const Text('Instrucciones'),
            ),
            ElevatedButton(
              onPressed: () {
                navigateToFormulasPage(context, 'Fórmulas de Newton');
              },
              child: const Text('Fórmulas de Newton'),
            ),
            ElevatedButton(
              onPressed: () {
                navigateToFormulasPage(context, 'Fórmulas Eléctricas');
              },
              child: const Text('Fórmulas Eléctricas'),
            ),
            ElevatedButton(
              onPressed: () {
                navigateToFormulasPage(context, 'Fórmulas Generales');
              },
              child: const Text('Fórmulas Generales'),
            ),
            ElevatedButton(
              onPressed: () {
                navigateToFormulasPage(context, 'Fórmulas Extra');
              },
              child: const Text('Fórmulas Extra'),
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
        builder: (context) => FormulasPage(category: category),
      ),
    );
  }
}
