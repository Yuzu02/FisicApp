import 'package:flutter/material.dart';

class FormulaInputField extends StatelessWidget {
  final String label;
  final String unit;
  final ValueChanged<String> onChanged;

  const FormulaInputField({
    super.key,
    required this.label,
    required this.unit,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: '$label ($unit)',
      ),
      keyboardType: TextInputType.number,
      onChanged: onChanged,
    );
  }
}
