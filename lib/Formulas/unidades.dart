
// ? Aca se definen las unidades que se usaran en las formulas como constantes con sus símbolos y nombres

import '../Modelos/unidad.dart';

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
  static final Unidad kilometro = Unidad('km', 'Kilómetro');
  static final Unidad gramo = Unidad('g', 'Gramo');
  static final Unidad minuto = Unidad('min', 'Minuto');
  static final Unidad hora = Unidad('h', 'Hora');
  static final Unidad celsius = Unidad('°C', 'Celsius');
  static final Unidad fahrenheit = Unidad('°F', 'Fahrenheit');
  static final Unidad kelvin = Unidad('K', 'Kelvin');
  static final Unidad metrosCuadrados = Unidad('m²', 'Metros cuadrados');
  static final Unidad kilometrosCuadrados = Unidad('km²', 'Kilómetros cuadrados');
  static final Unidad hectareas = Unidad('ha', 'Hectáreas');
  static final Unidad piesCuadrados = Unidad('ft²', 'Pies cuadrados');
  static final Unidad kilometrosPorHora = Unidad('km/h', 'Kilómetros por hora');
  static final Unidad metrosPorSegundo = Unidad('m/s', 'Metros por segundo');
  static final Unidad millasPorHora = Unidad('mph', 'Millas por hora');

  // ? Para agregar una nueva unidad,  se debe definir una constante de tipo Unidad con el nombre y el símbolo de la unidad que se desea agregar ( Encima de este comentario )

  // * Ejemplo:

  // static final Unidad ejemplo = Unidad('ej', 'Ejemplo');
}
