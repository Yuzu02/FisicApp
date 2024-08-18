class Unidad {
  final String simbolo;
  final String nombre;

  Unidad(this.simbolo, this.nombre);
}

class Unidades {
  static final Unidad  newton = Unidad('N', 'Newton');
  static final Unidad  kilogramo = Unidad('kg', 'Kilogramo');
  static final Unidad  metroPorSegundoCuadrado = Unidad('m/s²', 'Metro por segundo cuadrado');
  static final Unidad  voltio = Unidad('V', 'Voltio');
  static final Unidad  amperio = Unidad('A', 'Amperio');
  static final Unidad  ohmio = Unidad('Ω', 'Ohmio');
  static final Unidad  coulomb = Unidad('C', 'Coulomb');
  static final Unidad  metro = Unidad('m', 'Metro');
  static final Unidad  segundo = Unidad('s', 'Segundo');
}
