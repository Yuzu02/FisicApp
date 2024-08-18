import 'package:fisicapp/Modelos/unidad.dart';

// ? Aca se definen las unidades que se usaran en las formulas como constantes con sus símbolos y nombres

class Unidades {
  static final Unidad newton = Unidad('N', 'Newton');
  static final Unidad kilogramo = Unidad('kg', 'Kilogramo');
  static final Unidad metroPorSegundoCuadrado = Unidad('m/s²', 'Metro por segundo cuadrado');
  static final Unidad voltio = Unidad('V', 'Voltio');
  static final Unidad amperio = Unidad('A', 'Amperio');
  static final Unidad ohmio = Unidad('Ω', 'Ohmio');
  static final Unidad coulomb = Unidad('C', 'Coulomb');
  static final Unidad metro = Unidad('m', 'Metro');
  static final Unidad segundo = Unidad('s', 'Segundo');


  // ? Para agregar una nueva unidad,  se debe definir una constante de tipo Unidad con el nombre y el símbolo de la unidad que se desea agregar ( Encima de este comentario )

  // * Ejemplo:

  // static final Unidad ejemplo = Unidad('ej', 'Ejemplo');
}
