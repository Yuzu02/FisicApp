// lib/Utilidades/icon_util.dart

import 'package:flutter/material.dart';

IconData getIconForSection(String sectionName) {
  switch (sectionName) {
    case 'Leyes de Newton':
      return Icons.arrow_forward;
    case 'Electrónica':
      return Icons.electrical_services;
    case 'Fórmulas Generales':
      return Icons.functions;
    default:
      return Icons.calculate;
  }
}
