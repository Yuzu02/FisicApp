class Constante {
  final String nombre;
  final String simbolo;
  final double valor;

  Constante(this.nombre, this.simbolo, this.valor);
}

class Constantes {
  static final Constante constanteCoulomb = Constante(
    'Constante de Coulomb',
    'k',
    8.98755e9,
  );

  static final Constante constanteGravitacion = Constante(
    'Constante de Gravitación Universal',
    'G',
    6.67430e-11,
  );

  static final Constante valorPi = Constante(
    'Pi',
    'π',
    3.14159265359,
  );
}
