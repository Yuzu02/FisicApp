import 'package:fisicapp/Modelos/formula.dart';
import 'package:fisicapp/Formulas/constantes.dart';

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
              r'\vec{F} = m \cdot \vec{a}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'm * a', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'F',
          variables: ['m', 'a'],
          unidades: {'F': 'N', 'm': 'kg', 'a': 'm/s^2'},
        ),
        Formula(
          nombre: 'Aceleración',
          etiqueta:
              r'\vec{a} = \frac{\vec{F}}{m}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'F / m', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'a',
          variables: ['F', 'm'],
          unidades: {'a': 'm/s^2', 'F': 'N', 'm': 'kg'},
        ),
        Formula(
          nombre: 'Masa',
          etiqueta:
              r'm = \frac{\vec{F}}{\vec{a}}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
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
              r'V = I \cdot R', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'I * R', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'V',
          variables: ['I', 'R'],
          unidades: {'V': 'V', 'I': 'A', 'R': 'Ω'},
        ),
        Formula(
          nombre: 'Corriente',
          etiqueta:
              r'I = \frac{V}{R}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'V / R', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'I',
          variables: ['V', 'R'],
          unidades: {'I': 'A', 'V': 'V', 'R': 'Ω'},
        ),
        Formula(
          nombre: 'Resistencia',
          etiqueta:
              r'R = \frac{V}{I}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
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
              r'\vec{F} = k \cdot \frac{q_1 \cdot q_2}{r^2}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion: 'k * (q1 * q2) / (r * r)',
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
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Distancia',
          etiqueta:
              r'r = \sqrt{\frac{k \cdot q_1 \cdot q_2}{\vec{F}}}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion: '((k * (q1 * q2)) / F)*(0.5)',
          resultado: 'r',
          variables: ['k', 'q1', 'q2', 'F'],
          unidades: {
            'r': 'm',
            'k': 'N*m^2/C^2',
            'q1': 'C',
            'q2': 'C',
            'F': 'N'
          },
          constantes: {
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Carga 1',
          etiqueta:
              r'q_1 = \frac{\vec{F} \cdot r^2}{k \cdot q_2}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion: 'F * (r * r) / (k * q2)',
          resultado: 'q1',
          variables: ['F', 'r', 'k', 'q2'],
          unidades: {
            'q1': 'C',
            'F': 'N',
            'r': 'm',
            'k': 'N*m^2/C^2',
            'q2': 'C'
          },
          constantes: {
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
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
              r'\vec{v} = \frac{d}{t}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'd / t', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'v',
          variables: ['d', 't'],
          unidades: {'v': 'm/s', 'd': 'm', 't': 's'},
        ),
        Formula(
          nombre: 'Distancia',
          etiqueta:
              r'd = \vec{v} \cdot t', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              'v * t', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
          resultado: 'd',
          variables: ['v', 't'],
          unidades: {'d': 'm', 'v': 'm/s', 't': 's'},
        ),
        Formula(
          nombre: 'Tiempo',
          etiqueta:
              r't = \frac{d}{\vec{v}}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
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
