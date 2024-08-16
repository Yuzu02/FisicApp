class Formula {
  final String name;
  final String expression;
  final List<String> variables;
  final Map<String, String> units;

  Formula({
    required this.name,
    required this.expression,
    required this.variables,
    required this.units,
  });
}
