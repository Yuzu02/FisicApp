import 'package:flutter/material.dart';
import './screens/home_page.dart';

class FormulasApp extends StatelessWidget {
  const FormulasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FisicApp',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
