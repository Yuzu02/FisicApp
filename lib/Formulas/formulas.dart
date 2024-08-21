import 'package:fisicapp/Formulas/instrucciones.dart';
import 'package:fisicapp/Modelos/formula.dart';
import 'package:fisicapp/Formulas/constantes.dart';

// * Sección de Fórmulas

// ? Las secciones de fórmulas son las categorías en las que se agrupan las fórmulas

// ? Cada sección de fórmulas tiene un nombre y una lista de grupos de fórmulas

// ? Cada grupo de fórmulas tiene un nombre y una lista de fórmulas ( Todos los despejes posibles de dicha fórmula )

// ? Cada fórmula tiene un nombre, una etiqueta ( La fórmula en LaTeX ), una expresión ( La fórmula en formato de expresión ), un resultado ( La variable que se despeja ), una lista de variables ( Las variables de la fórmula ), una lista de unidades ( Las unidades de las variables de la fórmula ) y una lista de constantes opcionales ( Las constantes que se usan en la fórmula { Si es que hay alguna } )

// ! Antes de cualquier cosa que se cambie o se agregue, se debe tener en cuenta que las fórmulas deben ser correctas y estar bien escritas y que antes de tocar este archivo favor revisar todos los modelos definidos en la carpeta Modelos ( Para saber en base a que se están definiendo las fórmulas , los grupos y las secciones ) luego pasar por constantes.dart y unidades.dart para saber que constantes y unidades se pueden usar en las fórmulas ( Agregar constantes y unidades si es necesario ) y por último revisar la UI para saber como se están mostrando las fórmulas en la aplicación

// Todo : Antes de agregar un nuevo grupo de fórmulas, se debe agregar un nuevo objeto de tipo GrupoFormulas a la lista de grupos de la sección de fórmulas a la que pertenece dicho grupo de fórmulas ( Revisar bien en que sección se debe agregar el grupo de fórmulas )

// Todo : Luego de agregar un nuevo grupo de formulas , revisar los modelos de instrucciones en Modelos/instrucciones_formula.dart y agregar las instrucciones correspondientes al nuevo grupo de fórmulas siguiendo los pasos en el archivo de instrucciones_formula.dart y luego yendo a Formulas/instrucciones.dart y agregando las instrucciones al objeto instrucciones en instrucciones.dart para luego volver a este archivo y agregar las instrucciones al grupo de fórmulas correspondiente

// Sección de Newton
final SeccionFormulas seccionNewton = SeccionFormulas(
  nombre: 'Leyes de Newton',
  groups: [
    GrupoFormulas(
      nombre: 'Segunda Ley de Newton',
      instrucciones: instrucciones.segundaLeyNewton,
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
    GrupoFormulas(
        nombre: "Inercia",
        instrucciones: instrucciones.inercia,
        formulas: [
          Formula(
            nombre: 'Inercia',
            etiqueta: r'I = m \cdot r^2',
            expresion: 'm * (r * r)',
            resultado: 'I',
            variables: ['m', 'r'],
            unidades: {'I': 'kg*m^2', 'm': 'kg', 'r': 'm'},
          ),
          Formula(
            nombre: 'Masa',
            etiqueta: r'm = \frac{I}{r^2}',
            expresion: 'I / (r * r)',
            resultado: 'm',
            variables: ['I', 'r'],
            unidades: {'m': 'kg', 'I': 'kg*m^2', 'r': 'm'},
          ),
          Formula(
            nombre: 'Radio',
            etiqueta: r'r = \sqrt{\frac{I}{m}}',
            expresion: 'sqrt(I / m)',
            resultado: 'r',
            variables: ['I', 'm'],
            unidades: {'r': 'm', 'I': 'kg*m^2', 'm': 'kg'},
          ),
        ]
    ),
    GrupoFormulas(
      nombre: 'Acción y Reacción',
      instrucciones: instrucciones.accionReaccion,
      formulas: [
        Formula(
          nombre: 'Fuerza de Acción',
          etiqueta:
              r'\vec{F}_{acción} = -\vec{F}_{reacción}',
          expresion: '-F_reaccion',
          resultado: 'F_accion',
          variables: ['F_reaccion'],
          unidades: {'F_accion': 'N', 'F_reaccion': 'N'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Gravitación Universal',
      instrucciones: instrucciones.gravitacionUniversal,
      formulas: [
        Formula(
          nombre: 'Fuerza Gravitacional',
          etiqueta:
              r'\vec{F} = G \cdot \frac{m_1 \cdot m_2}{r^2}',
          expresion: 'G * (m1 * m2) / (r * r)',
          resultado: 'F',
          variables: ['G', 'm1', 'm2', 'r'],
          unidades: {
            'F': 'N',
            'G': 'N*m^2/kg^2',
            'm1': 'kg',
            'm2': 'kg',
            'r': 'm'
          },
          constantes: {
            Constantes.constanteGravitacion.simbolo:
                Constantes.constanteGravitacion.valor
          },
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
      instrucciones: instrucciones.leyDeOhm,
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
      instrucciones: instrucciones.leyDeCoulomb,
      formulas: [
        Formula(
          nombre: 'Fuerza',
          etiqueta:
              r'\vec{F} = k \cdot \frac{q_1 \cdot q_2}{r^2}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
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
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Distancia',
          etiqueta:
              r'r = \sqrt{\frac{k \cdot q_1 \cdot q_2}{\vec{F}}}', // ?  La etiqueta es la formula que se mostrara en la UI  ( Escrita en LaTex obviando los $ )
          expresion:
              '((k * (q1 * q2)) / F)*(0.5)', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
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
          expresion:
              'F * (r * r) / (k * q2)', // * Formato en el cual se deben hacer las expresiones , sin el = y ni el resultado , solo el lado derecho de la igualdad
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
      instrucciones: instrucciones.velocidad,
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

// Sección de Cinemática
final SeccionFormulas seccionCinematica = SeccionFormulas(
  nombre: 'Cinemática',
  groups: [
    // Velocidad Media
    GrupoFormulas(
      nombre: 'Velocidad Media',
      instrucciones: instrucciones.velocidadMedia,
      formulas: [
        Formula(
          nombre: 'Velocidad media',
          etiqueta: r'\bar{v} = \frac{\Delta x}{\Delta t}',
          expresion: '(xf - xi) / dt',
          resultado: 'v',
          variables: ['xi','xf', 'dt'],
          unidades: {'v': 'm/s', 'xi': 'm', 'xf': 'm', 'dt': 's'},
        ),
        Formula(
          nombre: 'Desplasamiento Δx',
          etiqueta: r'\Delta x = \bar{v} \cdot \Delta t',
          expresion: 'v * dt',
          resultado: 'dx',
          variables: ['v', 'dt'],
          unidades: {'dx': 'm', 'v': 'm/s', 'dt': 's'},
        ),
        Formula(
          nombre: 'Tiempo Δt',
          etiqueta: r'\Delta t = \frac{\Delta x}{\bar{v}}',
          expresion: '(xf - xi) / v',
          resultado: 'dt',
          variables: ['xi','xf', 'v'],
          unidades: {'dt': 's', 'xi': 'm', 'xf': 'm', 'v': 'm/s'},
        ),
      ],
    ),

    // Aceleración Media
    GrupoFormulas(
      nombre: 'Aceleración Media',
      instrucciones: instrucciones.aceleracionMedia,
      formulas: [
        Formula(
          nombre: 'Aceleración media',
          etiqueta: r'\bar{a} = \frac{\Delta v}{\Delta t}',
          expresion: '(vf - vi) / dt',
          resultado: 'a',
          variables: ['vi','vf', 'dt'],
          unidades: {'a': 'm/s²', 'vi': 'm/s', 'vf': 'm/s', 'dt': 's'},
        ),
        Formula(
          nombre: 'Velocidad Δv',
          etiqueta: r'\Delta v = \bar{a} \cdot \Delta t',
          expresion: 'a * dt',
          resultado: 'dv',
          variables: ['a', 'dt'],
          unidades: {'dv': 'm/s', 'a': 'm/s²', 'dt': 's'},
        ),
        Formula(
          nombre: 'Tiempo Δt',
          etiqueta: r'\Delta t = \frac{\Delta v}{\bar{a}}',
          expresion: '(vf - vi) / a',
          resultado: 'dt',
          variables: ['vi','vf', 'a'],
          unidades: {'dt': 's', 'vi': 'm/s', 'vf': 'm/s', 'a': 'm/s²'},
        ),
      ],
    ),

    // Rapidez
    GrupoFormulas(
      nombre: 'Rapidez',
      instrucciones: instrucciones.rapidez,
      formulas: [
        Formula(
          nombre: 'Rapidez',
          etiqueta: r'r = \frac{d}{t}',
          expresion: 'd / t',
          resultado: 'r',
          variables: ['d', 't'],
          unidades: {'r': 'm/s', 'd': 'm', 't': 's'},
        ),
        // Despeje de d
        Formula(
          nombre: 'Distancia',
          etiqueta: r'd = r \cdot t',
          expresion: 'r * t',
          resultado: 'd',
          variables: ['r', 't'],
          unidades: {'d': 'm', 'r': 'm/s', 't': 's'},
        ),
        // Despeje de t
        Formula(
          nombre: 'Tiempo',
          etiqueta: r't = \frac{d}{r}',
          expresion: 'd / r',
          resultado: 't',
          variables: ['d', 'r'],
          unidades: {'t': 's', 'd': 'm', 'r': 'm/s'},
        ),
      ],
    ),

    //MRUA 
    GrupoFormulas(
      nombre: 'Ecuaciones del Movimiento Rectilíneo Uniformemente Acelerado',
      instrucciones: instrucciones.movimientoRectilineo,
      formulas: [
        Formula(
          nombre: 'Velocidad final',
          etiqueta: r'v_f = v_i + a \cdot t',
          expresion: 'vi + (a * t)',
          resultado: 'vf',
          variables: ['vi', 'a', 't'],
          unidades: {'vf': 'm/s', 'vi': 'm/s', 'a': 'm/s²', 't': 's'},
        ),
        Formula(
          nombre: 'Posición',
          etiqueta: r'x = x_i + v_i \cdot t + \frac{1}{2} \cdot a \cdot t^2',
          expresion: 'xi + (vi * t) + (0.5 * a * (t * t))',
          resultado: 'x',
          variables: ['xi', 'vi', 'a', 't'],
          unidades: {'x': 'm', 'xi': 'm', 'vi': 'm/s', 'a': 'm/s²', 't': 's'},
        ),
        Formula(
          nombre: 'Velocidad al Cuadrado',
          etiqueta: r'v_f^2 = v_i^2 + 2 \cdot a \cdot \Delta x',
          expresion: '(vi * vi) + (2 * a * dx)',
          resultado: 'vf²',
          variables: ['vi', 'a', 'dx'],
          unidades: {'vf²': 'm/s²', 'vi': 'm/s', 'a': 'm/s²', 'dx': 'm'},
        ),
      ],
    ),
    
  ],
);

//  Lista de secciones de fórmulas
final List<SeccionFormulas> formulasSections = <SeccionFormulas>[
  seccionNewton,
  seccionFisicaElectrica,
  seccionGeneral,
  seccionCinematica,
  // ? Si se quiere agregar una nueva sección de fórmulas, se debe agregar un nuevo objeto de tipo SeccionFormulas a esta lista
];
