// instructions_dialog.dart
import 'package:fisicapp/Data/paginas.dart';
import 'package:flutter/material.dart';

class InstructionsDialog extends StatelessWidget {
  const InstructionsDialog({super.key});

  // HomePaginaTexto.

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(HomePaginaTexto.instruccionesTitulo),
      content: const Text(HomePaginaTexto.instruccionesContenido),
      actions: [
        TextButton(
          child: const Text(HomePaginaTexto.cerrarTexto),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
