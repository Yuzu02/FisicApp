import 'package:flutter/material.dart';

class AcercaEquipo extends StatelessWidget {
  const AcercaEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Grupo 2',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        textAlign: TextAlign.center,
      ),
      content: const SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EstudianteInfo(
                  nombre: 'Frederick Daell Lied', matricula: '22-SISN-2-045'),
              EstudianteInfo(
                  nombre: 'Juan Carlos Mota', matricula: '22-SISN-2-021'),
              EstudianteInfo(
                  nombre: 'Pamela Michael Javier', matricula: '22-SISN-2-010'),
              EstudianteInfo(
                  nombre: 'Leticia Encarnación', matricula: '22-SISN-2-008'),
              EstudianteInfo(
                  nombre: 'Julio Antonio Solís', matricula: '22-SISN-2-027'),
              EstudianteInfo(
                  nombre: 'Yoselin Pérez Padilla', matricula: '22-SISN-2-001'),
              EstudianteInfo(
                nombre: 'Kimberly Esther Peguero',
                matricula: '22-SISN-2-035',
              ),
              EstudianteInfo(
                  nombre: 'Juan Esteban Olivares', matricula: '22-MISN-2-027'),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}

class EstudianteInfo extends StatelessWidget {
  final String nombre;
  final String matricula;

  const EstudianteInfo({
    super.key,
    required this.nombre,
    required this.matricula,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade50, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nombre,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text(
                'Matrícula: ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              Text(
                matricula,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
