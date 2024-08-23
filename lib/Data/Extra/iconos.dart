// lib/Utilidades/icon_util.dart

import 'package:flutter/material.dart';

// ? Aca se definen los iconos que se usaran en las categorías de fórmulas

IconData getIconForSection(String sectionName) {
  switch (sectionName) {
    case 'Leyes de Newton':
      return Icons.arrow_forward;
    case 'Electrónica':
      return Icons.electrical_services;
    case 'Fórmulas Generales':
      return Icons.functions;
    case 'Cinemática':
      return Icons.directions_run;
    case 'Capacitores':
      return Icons.battery_full;
    case 'Conversiones':
      return Icons.swap_horiz;
    default:
      return Icons.calculate;
  }
}
