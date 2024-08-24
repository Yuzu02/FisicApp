// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fisicapp/Vistas/home_pagina.dart';

void main() {
  testWidgets('Home page smoke test', (WidgetTester tester) async {
    // Envuelve HomePagina en un MaterialApp para proporcionar el Directionality necesario
    await tester.pumpWidget(const MaterialApp(home: HomePagina()));

    // Verifica que el título 'FisicApp' esté presente
    expect(find.text('FisicApp'), findsOneWidget);

    // Verifica que el texto 'Categorías de Fórmulas' esté presente
    expect(find.text('Categorías de Fórmulas'), findsOneWidget);

    // ? Esta parte es de test de integración
  });
}
