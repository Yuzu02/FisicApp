import 'package:fisicapp/Modelos/formula.dart';

// Sección de Newton
final SeccionFormulas seccionNewton = SeccionFormulas(
  nombre: 'Leyes de Newton',
  groups: [
    GrupoFormulas(
      nombre: 'Segunda Ley de Newton',
      formulas: [
        Formula(
          nombre: 'Fuerza',
          etiqueta:
              'F = m * a', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'm * a', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'F',
          variables: ['m', 'a'],
          unidades: {'F': 'N', 'm': 'kg', 'a': 'm/s^2'},
        ),
        Formula(
          nombre: 'Aceleración',
          etiqueta:
              'a = F / m', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'F / m', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'a',
          variables: ['F', 'm'],
          unidades: {'a': 'm/s^2', 'F': 'N', 'm': 'kg'},
        ),
        Formula(
          nombre: 'Masa',
          etiqueta:
              'm = F / a', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'F / a', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'm',
          variables: ['F', 'a'],
          unidades: {'m': 'kg', 'F': 'N', 'a': 'm/s^2'},
        ),
      ],
    ),
  ],
);

// Sección Eléctrica
final SeccionFormulas seccionFisicaElectrica = SeccionFormulas(
  nombre: 'Electrónica',
  groups: [
    GrupoFormulas(
      nombre: 'Ley de Ohm',
      formulas: [
        Formula(
          nombre: 'Voltaje',
          etiqueta:
              'V = I * R', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'I * R', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'V',
          variables: ['I', 'R'],
          unidades: {'V': 'V', 'I': 'A', 'R': 'Ω'},
        ),
        Formula(
          nombre: 'Corriente',
          etiqueta:
              'I = V / R', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'V / R', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'I',
          variables: ['V', 'R'],
          unidades: {'I': 'A', 'V': 'V', 'R': 'Ω'},
        ),
        Formula(
          nombre: 'Resistencia',
          etiqueta:
              'R = V / I', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'V / I', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'R',
          variables: ['V', 'I'],
          unidades: {'R': 'Ω', 'V': 'V', 'I': 'A'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Ley de Coulomb',
      formulas: [
        Formula(
          nombre: 'Fuerza',
          etiqueta:
              'F = k * (q1 * q2) / r²', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'k * (q1 * q2) / (r * r)', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'F',
          variables: ['k', 'q1', 'q2', 'r'],
          unidades: {
            'F': 'N',
            'k': 'N*m^2/C^2',
            'q1': 'C',
            'q2': 'C',
            'r': 'm'
          },
          constantes: {
            'k': 8.99e9
          }, // ? Las constantes son valores que no cambian y se pueden usar en las formulas , se pueden omitir si no se necesitan  , se pueden agregar todas las que se necesiten , solo se deben agregar los valores , no las unidades , estas se deben agregar en la sección de unidades de la formula y se pueden expresar en notación científica
        ),
        Formula(
          nombre: 'Distancia',
          etiqueta:
              'r = √((k * q1 * q2) / F)', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'sqrt((k * q1 * q2) / F)', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'r',
          variables: ['k', 'q1', 'q2', 'F'],
          unidades: {
            'r': 'm',
            'k': 'N*m^2/C^2',
            'q1': 'C',
            'q2': 'C',
            'F': 'N'
          },
          constantes: {'k': 8.99e9},
        ),
        Formula(
          nombre: 'Carga 1',
          etiqueta:
              'q1 = F * r² / (k * q2)', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'F * r^2 / (k * q2)', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'q1',
          variables: ['F', 'r', 'k', 'q2'],
          unidades: {
            'q1': 'C',
            'F': 'N',
            'r': 'm',
            'k': 'N*m^2/C^2',
            'q2': 'C'
          },
          constantes: {'k': 8.99e9},
        ),
      ],
    ),
  ],
);

// Sección General
final SeccionFormulas seccionGeneral = SeccionFormulas(
  nombre: 'Fórmulas Generales',
  groups: [
    GrupoFormulas(
      nombre: 'Velocidad',
      formulas: [
        Formula(
          nombre: 'Velocidad',
          etiqueta:
              'v = d / t', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'd / t', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'v',
          variables: ['d', 't'],
          unidades: {'v': 'm/s', 'd': 'm', 't': 's'},
        ),
        Formula(
          nombre: 'Distancia',
          etiqueta:
              'd = v * t', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'v * t', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'd',
          variables: ['v', 't'],
          unidades: {'d': 'm', 'v': 'm/s', 't': 's'},
        ),
        Formula(
          nombre: 'Tiempo',
          etiqueta:
              't = d / v', // ?  La etiqueta es la formula que se mostrara en la UI
          expresion:
              'd / v', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 't',
          variables: ['d', 'v'],
          unidades: {'t': 's', 'd': 'm', 'v': 'm/s'},
        ),
      ],
    ),
  ],
);

final List<SeccionFormulas> formulasSections = <SeccionFormulas>[
  seccionNewton,
  seccionFisicaElectrica,
  seccionGeneral,
];
