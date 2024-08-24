import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../Modelos/instrucciones_formula.dart';

class InstruccionesWidget extends StatelessWidget {
  final List<InstruccionFormula> instrucciones;

  const InstruccionesWidget({super.key, required this.instrucciones});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: instrucciones.map((instruccion) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    instruccion.descripcion,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 32,
                    ),
                    child: Math.tex(
                      instruccion.latexFormula,
                      mathStyle: MathStyle.display,
                      textScaleFactor: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...instruccion.explicaciones.map((explicacion) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Math.tex(
                          explicacion.latex,
                          textScaleFactor: 1.2,
                        ),
                        Expanded(
                          child: Text(
                            explicacion.texto,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
