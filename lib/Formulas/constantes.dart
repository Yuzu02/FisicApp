import 'package:fisicapp/Modelos/constantes.dart';

// ? Aca se definen las constantes que se usaran en las formulas como constantes con sus nombres, símbolos y valores

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

  // ? Para agregar una nueva constante,  se debe definir una constante de tipo Constante con el nombre, el símbolo y el valor de la constante que se desea agregar ( Encima de este comentario )

  // * Ejemplo:

  // static final Constante ejemplo = Constante(
  //   'Ejemplo',
  //   'Ej',
  //   0,
  // );
}
