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
        nombre: 'Inercia',
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
        ]),
    GrupoFormulas(
      nombre: 'Acción y Reacción',
      instrucciones: instrucciones.accionReaccion,
      formulas: [
        Formula(
          nombre: 'Fuerza de Acción',
          etiqueta: r'\vec{F}_{acción} = -\vec{F}_{reacción}',
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
          etiqueta: r'\vec{F} = G \cdot \frac{m_1 \cdot m_2}{r^2}',
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
    GrupoFormulas(
        nombre: 'Densidades Electricas',
        instrucciones: instrucciones.densidadesElectricas,
        formulas: [
          Formula(
            nombre: 'Densidad lineal de carga',
            etiqueta: r'\lambda = \frac{q}{l}',
            expresion: 'q / l',
            resultado: 'λ',
            variables: ['q', 'l'],
            unidades: {'λ': 'C/m', 'q': 'C', 'l': 'm'},
          ),
          Formula(
            nombre: 'Densidad superficial de carga',
            etiqueta: r'\sigma = \frac{q}{S}',
            expresion: 'q / S',
            resultado: 'σ',
            variables: ['q', 'S'],
            unidades: {'σ': 'C/m²', 'q': 'C', 'S': 'm²'},
          ),
          Formula(
            nombre: 'Densidad volumétrica de carga',
            etiqueta: r'\rho = \frac{q}{V}',
            expresion: 'q / V',
            resultado: 'ρ',
            variables: ['q', 'V'],
            unidades: {'ρ': 'C/m³', 'q': 'C', 'V': 'm³'},
          ),
        ]),
    GrupoFormulas(
      nombre: 'Campo y Potencial Eléctrico',
      instrucciones: instrucciones.campoPotencialElectrico,
      formulas: [
        Formula(
          nombre: 'Campo eléctrico',
          etiqueta: r'E = k \cdot \frac{Q}{r^2}',
          expresion: 'k * Q / (r * r)',
          resultado: 'E',
          variables: ['k', 'Q', 'r'],
          unidades: {'E': 'N/C', 'k': 'N*m^2/C^2', 'Q': 'C', 'r': 'm'},
          constantes: {
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Potencial eléctrico',
          etiqueta: r'V = k \cdot \frac{Q}{r}',
          expresion: 'k * Q / r',
          resultado: 'V',
          variables: ['k', 'Q', 'r'],
          unidades: {'V': 'V', 'k': 'N·m^2/C^2', 'Q': 'C', 'r': 'm'},
          constantes: {
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Intensidad del campo eléctrico',
          etiqueta: r'E = k \cdot \frac{q}{r^2}',
          expresion: 'k * q / (r * r)',
          resultado: 'E',
          variables: ['k', 'q', 'r'],
          unidades: {'E': 'N/C', 'k': 'N·m^2/C^2', 'q': 'C', 'r': 'm'},
          constantes: {
            Constantes.constanteCoulomb.simbolo:
                Constantes.constanteCoulomb.valor
          },
        ),
        Formula(
          nombre: 'Flujo eléctrico de una superficie plana',
          etiqueta: r'\Phi_E = E \cdot A \cdot \cos(\theta)',
          expresion: 'E * A * cos(theta)',
          resultado: 'ΦE',
          variables: ['E', 'A', 'theta'],
          unidades: {'ΦE': 'N·m²/C', 'E': 'N/C', 'A': 'm²', 'theta': 'rad'},
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
    // Trabajo y Energía
    GrupoFormulas(
      nombre: 'Trabajo y Energía',
      instrucciones: instrucciones.trabajoEnergia,
      formulas: [
        Formula(
          nombre: 'Trabajo',
          etiqueta: r'W = F \cdot d \cdot \cos(\theta)',
          expresion: 'F * d * cos(theta)',
          resultado: 'W',
          variables: ['F', 'd', 'theta'],
          unidades: {'W': 'J', 'F': 'N', 'd': 'm', 'theta': 'rad'},
        ),
        Formula(
          nombre: 'Energía Cinética',
          etiqueta: r'E_c = \frac{1}{2}mv^2',
          expresion: '0.5 * m * v^2',
          resultado: 'Ec',
          variables: ['m', 'v'],
          unidades: {'Ec': 'J', 'm': 'kg', 'v': 'm/s'},
        ),
        Formula(
          nombre: 'Energía Potencial Gravitatoria',
          etiqueta: r'E_p = mgh',
          expresion: 'm * g * h',
          resultado: 'Ep',
          variables: ['m', 'g', 'h'],
          unidades: {'Ep': 'J', 'm': 'kg', 'g': 'm/s²', 'h': 'm'},
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
          variables: ['xi', 'xf', 'dt'],
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
          variables: ['xi', 'xf', 'v'],
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
          variables: ['vi', 'vf', 'dt'],
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
          variables: ['vi', 'vf', 'a'],
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

    // Movimiento Circular

    GrupoFormulas(
      nombre: 'Movimiento Circular',
      instrucciones: instrucciones.movimientoCircular,
      formulas: [
        Formula(
          nombre: 'Velocidad Angular',
          etiqueta: r'\omega = \frac{\theta}{t}',
          expresion: 'theta / t',
          resultado: 'omega',
          variables: ['theta', 't'],
          unidades: {'omega': 'rad/s', 'theta': 'rad', 't': 's'},
        ),
        Formula(
          nombre: 'Ángulo',
          etiqueta: r'\theta = \omega \cdot t',
          expresion: 'omega * t',
          resultado: 'theta',
          variables: ['omega', 't'],
          unidades: {'theta': 'rad', 'omega': 'rad/s', 't': 's'},
        ),
        Formula(
          nombre: 'Tiempo',
          etiqueta: r't = \frac{\theta}{\omega}',
          expresion: 'theta / omega',
          resultado: 't',
          variables: ['theta', 'omega'],
          unidades: {'t': 's', 'theta': 'rad', 'omega': 'rad/s'},
        ),
      ],
    ),
    // MRU (Movimiento Rectilíneo Uniforme)
    GrupoFormulas(
      nombre: 'Movimiento Rectilíneo Uniforme',
      instrucciones: instrucciones.mru,
      formulas: [
        Formula(
          nombre: 'Posición',
          etiqueta: r'x = x_i + v \cdot t',
          expresion: 'xi + (v * t)',
          resultado: 'x',
          variables: ['xi', 'v', 't'],
          unidades: {'x': 'm', 'xi': 'm', 'v': 'm/s', 't': 's'},
        ),
        Formula(
          nombre: 'Velocidad',
          etiqueta: r'v = \frac{\Delta x}{\Delta t}',
          expresion: '(xf - xi) / dt',
          resultado: 'v',
          variables: ['xi', 'xf', 'dt'],
          unidades: {'v': 'm/s', 'xi': 'm', 'xf': 'm', 'dt': 's'},
        ),
        Formula(
          nombre: 'Tiempo',
          etiqueta: r't = \frac{\Delta x}{v}',
          expresion: '(xf - xi) / v',
          resultado: 't',
          variables: ['xi', 'xf', 'v'],
          unidades: {'t': 's', 'xi': 'm', 'xf': 'm', 'v': 'm/s'},
        ),
      ],
    ),
  ],
);

// Sección de Capacitores
final SeccionFormulas seccionCapacitores = SeccionFormulas(
  nombre: 'Capacitores',
  groups: [
    GrupoFormulas(
      nombre: 'Capacitores en Serie',
      instrucciones: instrucciones.capacitoresSerie,
      formulas: [
        Formula(
          nombre: 'Capacitancia equivalente',
          etiqueta:
              r'\frac{1}{C_{eq}} = \frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}',
          expresion: '1 / C1 + 1 / C2 + 1 / C3',
          resultado: 'Ceq',
          variables: ['C1', 'C2', 'C3'],
          unidades: {'Ceq': 'F', 'C1': 'F', 'C2': 'F', 'C3': 'F'},
        ),
        Formula(
          nombre: 'Voltaje total',
          etiqueta: r'V_{total} = V_1 + V_2 + V_3',
          expresion: 'V1 + V2 + V3',
          resultado: 'Vtotal',
          variables: ['V1', 'V2', 'V3'],
          unidades: {'Vtotal': 'V', 'V1': 'V', 'V2': 'V', 'V3': 'V'},
        ),
        Formula(
          nombre: 'Carga',
          etiqueta: r'Q_1 = Q_2 = Q_3',
          expresion: 'Q',
          resultado: 'Q',
          variables: ['Q'],
          unidades: {'Q': 'C'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Capacitores en Paralelo',
      instrucciones: instrucciones.capacitoresParalelo,
      formulas: [
        Formula(
          nombre: 'Capacitancia equivalente',
          etiqueta: r'C_{eq} = C_1 + C_2 + C_3',
          expresion: 'C1 + C2 + C3',
          resultado: 'Ceq',
          variables: ['C1', 'C2', 'C3'],
          unidades: {'Ceq': 'F', 'C1': 'F', 'C2': 'F', 'C3': 'F'},
        ),
        Formula(
          nombre: 'Voltaje',
          etiqueta: r'V_1 = V_2 = V_3',
          expresion: 'V',
          resultado: 'V',
          variables: ['V'],
          unidades: {'V': 'V'},
        ),
        Formula(
          nombre: 'Carga total',
          etiqueta: r'Q_{total} = Q_1 + Q_2 + Q_3',
          expresion: 'Q1 + Q2 + Q3',
          resultado: 'Qtotal',
          variables: ['Q1', 'Q2', 'Q3'],
          unidades: {'Qtotal': 'C', 'Q1': 'C', 'Q2': 'C', 'Q3': 'C'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Carga en un Capacitor',
      instrucciones: instrucciones
          .capacitores, // Asume que hay instrucciones definidas para capacitores
      formulas: [
        // Fórmula Principal
        Formula(
          nombre: 'Carga en un Capacitor',
          etiqueta: r'Q = C \cdot V',
          expresion: 'C * V',
          resultado: 'Q',
          variables: ['C', 'V'],
          unidades: {'Q': 'C', 'C': 'F', 'V': 'V'},
        ),
        // Despeje para Capacitancia
        Formula(
          nombre: 'Capacitancia',
          etiqueta: r'C = \frac{Q}{V}',
          expresion: 'Q / V',
          resultado: 'C',
          variables: ['Q', 'V'],
          unidades: {'C': 'F', 'Q': 'C', 'V': 'V'},
        ),
        // Despeje para Voltaje
        Formula(
          nombre: 'Voltaje',
          etiqueta: r'V = \frac{Q}{C}',
          expresion: 'Q / C',
          resultado: 'V',
          variables: ['Q', 'C'],
          unidades: {'V': 'V', 'Q': 'C', 'C': 'F'},
        ),
      ],
    )
  ],
);

final SeccionFormulas seccionConversiones = SeccionFormulas(
  nombre: 'Conversiones de Unidades',
  groups: [
    GrupoFormulas(
      nombre: 'Longitud',
      instrucciones: instrucciones.conversionesLongitud,
      formulas: [
        Formula(
          nombre: 'Metro a Kilómetro',
          etiqueta: r'km = m \div 1000',
          expresion: 'm / 1000',
          resultado: 'km',
          variables: ['m'],
          unidades: {'km': 'km', 'm': 'm'},
        ),
        Formula(
          nombre: 'Kilómetro a Metro',
          etiqueta: r'm = km \times 1000',
          expresion: 'km * 1000',
          resultado: 'm',
          variables: ['km'],
          unidades: {'m': 'm', 'km': 'km'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Masa',
      instrucciones: instrucciones.conversionesMasa,
      formulas: [
        Formula(
          nombre: 'Gramo a Kilogramo',
          etiqueta: r'kg = g \div 1000',
          expresion: 'g / 1000',
          resultado: 'kg',
          variables: ['g'],
          unidades: {'kg': 'kg', 'g': 'g'},
        ),
        Formula(
          nombre: 'Kilogramo a Gramo',
          etiqueta: r'g = kg \times 1000',
          expresion: 'kg * 1000',
          resultado: 'g',
          variables: ['kg'],
          unidades: {'g': 'g', 'kg': 'kg'},
        ),
      ],
    ),
       GrupoFormulas(
      nombre: 'Tiempo',
      instrucciones: instrucciones.conversionesTiempo, 
      formulas: [
        Formula(
          nombre: 'Segundos a Minutos',
          etiqueta: r'min = s \div 60',
          expresion: 's / 60',
          resultado: 'min',
          variables: ['s'],
          unidades: {'min': 'min', 's': 's'},
        ),
        Formula(
          nombre: 'Minutos a Segundos',
          etiqueta: r's = min \times 60',
          expresion: 'min * 60',
          resultado: 's',
          variables: ['min'],
          unidades: {'s': 's', 'min': 'min'},
        ),
        Formula(
          nombre: 'Minutos a Horas',
          etiqueta: r'h = min \div 60',
          expresion: 'min / 60',
          resultado: 'h',
          variables: ['min'],
          unidades: {'h': 'h', 'min': 'min'},
        ),
        Formula(
          nombre: 'Horas a Minutos',
          etiqueta: r'min = h \times 60',
          expresion: 'h * 60',
          resultado: 'min',
          variables: ['h'],
          unidades: {'min': 'min', 'h': 'h'},
        ),
        Formula(
          nombre: 'Segundos a Horas',
          etiqueta: r'h = s \div 3600',
          expresion: 's / 3600',
          resultado: 'h',
          variables: ['s'],
          unidades: {'h': 'h', 's': 's'},
        ),
        Formula(
          nombre: 'Horas a Segundos',
          etiqueta: r's = h \times 3600',
          expresion: 'h * 3600',
          resultado: 's',
          variables: ['h'],
          unidades: {'s': 's', 'h': 'h'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Temperatura',
      instrucciones: instrucciones.conversionesTemperatura, 
      formulas: [
        Formula(
          nombre: 'Celsius a Fahrenheit',
          etiqueta: r'°F = (°C × 9/5) + 32',
          expresion: '(C * 9/5) + 32',
          resultado: 'F',
          variables: ['C'],
          unidades: {'F': '°F', 'C': '°C'},
        ),
        Formula(
          nombre: 'Fahrenheit a Celsius',
          etiqueta: r'°C = (°F - 32) × 5/9',
          expresion: '(F - 32) * 5/9',
          resultado: 'C',
          variables: ['F'],
          unidades: {'C': '°C', 'F': '°F'},
        ),
        Formula(
          nombre: 'Celsius a Kelvin',
          etiqueta: r'K = °C + 273.15',
          expresion: 'C + 273.15',
          resultado: 'K',
          variables: ['C'],
          unidades: {'K': 'K', 'C': '°C'},
        ),
        Formula(
          nombre: 'Kelvin a Celsius',
          etiqueta: r'°C = K - 273.15',
          expresion: 'K - 273.15',
          resultado: 'C',
          variables: ['K'],
          unidades: {'C': '°C', 'K': 'K'},
        ),
        Formula(
          nombre: 'Fahrenheit a Kelvin',
          etiqueta: r'K = (°F + 459.67) × 5/9',
          expresion: '(F + 459.67) * 5/9',
          resultado: 'K',
          variables: ['F'],
          unidades: {'K': 'K', 'F': '°F'},
        ),
        Formula(
          nombre: 'Kelvin a Fahrenheit',
          etiqueta: r'°F = K × 9/5 - 459.67',
          expresion: 'K * 9/5 - 459.67',
          resultado: 'F',
          variables: ['K'],
          unidades: {'F': '°F', 'K': 'K'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Área',
      instrucciones: instrucciones.conversionesArea,
      formulas: [
        Formula(
          nombre: 'Metros cuadrados a Kilómetros cuadrados',
          etiqueta: r'km² = m² ÷ 1,000,000',
          expresion: 'm2 / 1000000',
          resultado: 'km2',
          variables: ['m2'],
          unidades: {'km2': 'km²', 'm2': 'm²'},
        ),
        Formula(
          nombre: 'Metros cuadrados a Hectáreas',
          etiqueta: r'ha = m² ÷ 10,000',
          expresion: 'm2 / 10000',
          resultado: 'ha',
          variables: ['m2'],
          unidades: {'ha': 'ha', 'm2': 'm²'},
        ),
        Formula(
          nombre: 'Pies cuadrados a Metros cuadrados',
          etiqueta: r'm² = ft² × 0.092903',
          expresion: 'ft2 * 0.092903',
          resultado: 'm2',
          variables: ['ft2'],
          unidades: {'m2': 'm²', 'ft2': 'ft²'},
        ),
      ],
    ),
    GrupoFormulas(
      nombre: 'Velocidad',
      instrucciones: instrucciones.conversionesVelocidad,
      formulas: [
        Formula(
          nombre: 'Kilómetros por hora a Metros por segundo',
          etiqueta: r'm/s = km/h ÷ 3.6',
          expresion: 'kmh / 3.6',
          resultado: 'ms',
          variables: ['kmh'],
          unidades: {'ms': 'm/s', 'kmh': 'km/h'},
        ),
        Formula(
          nombre: 'Millas por hora a Kilómetros por hora',
          etiqueta: r'km/h = mph × 1.60934',
          expresion: 'mph * 1.60934',
          resultado: 'kmh',
          variables: ['mph'],
          unidades: {'kmh': 'km/h', 'mph': 'mph'},
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
  seccionCapacitores,
  seccionConversiones,
  // ? Si se quiere agregar una nueva sección de fórmulas, se debe agregar un nuevo objeto de tipo SeccionFormulas a esta lista
];
