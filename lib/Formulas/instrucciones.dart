import 'package:fisicapp/Modelos/instrucciones_formula.dart';

// * Instrucciones de las fórmulas

// ? Aca se agregan las instrucciones de las fórmulas que se desean mostrar en la aplicación , luego para usar dichas instrucciones se añaden en formulas.dart en el grupo de fórmulas correspondiente
final instrucciones = Instruccion(
  segundaLeyNewton: [
    InstruccionFormula(
        descripcion:
            'La segunda ley de Newton establece que la fuerza es igual a la masa multiplicada por la aceleración, y que la aceleración es directamente proporcional a la fuerza e inversamente proporcional a la masa.',
        latexFormula: r'\vec{F} = m \cdot \vec{a}',
        explicaciones: [
          ExplicacionItem(
              latex: r'\vec{F}', texto: ': La fuerza (en newtons, N)'),
          ExplicacionItem(latex: r'm', texto: ': La masa (en kilogramos, kg)'),
          ExplicacionItem(
              latex: r'\vec{a}', texto: ': La aceleración (en m/s²)'),
        ]),
  ],
  velocidad: [
    InstruccionFormula(
      descripcion:
          'La velocidad es una magnitud vectorial que indica la rapidez con la que un objeto se mueve en una dirección específica.',
      latexFormula: r'\vec{v} = \frac{\Delta \vec{x}}{\Delta t}',
      explicaciones: [
        ExplicacionItem(
            latex: r'\vec{v}',
            texto: ': La velocidad (en metros por segundo, m/s)'),
        ExplicacionItem(
            latex: r'\Delta \vec{x}',
            texto: ': El cambio en la posición del objeto (en metros, m)'),
        ExplicacionItem(
            latex: r'\Delta t',
            texto: ': El cambio en el tiempo (en segundos, s)'),
      ],
    ),
  ],
  leyDeCoulomb: [
    InstruccionFormula(
        descripcion:
            'La ley de Coulomb establece que la fuerza entre dos cargas eléctricas es directamente proporcional al producto de las magnitudes de las cargas e inversamente proporcional al cuadrado de la distancia entre ellas.',
        latexFormula: r'F = k \cdot \frac{q_1 \cdot q_2}{r^2}',
        explicaciones: [
          ExplicacionItem(
              latex: r'F',
              texto: ': La fuerza entre las cargas (en newtons, N)'),
          ExplicacionItem(
              latex: r'k',
              texto:
                  ': La constante de Coulomb (en newtons por metro cuadrado, N/m²)'),
          ExplicacionItem(
              latex: r'q_1',
              texto: ': La magnitud de la primera carga (en culombios, C)'),
          ExplicacionItem(
              latex: r'q_2',
              texto: ': La magnitud de la segunda carga (en culombios, C)'),
          ExplicacionItem(
              latex: r'r',
              texto: ': La distancia entre las cargas (en metros, m)'),
        ]),
  ],
  leyDeOhm: [
    InstruccionFormula(
      descripcion:
          'La ley de Ohn establece que el voltaje es igual a la corriente multiplicada por la resistencia. y que la corriente es directamente proporcional al voltaje e inversamente proporcional a la resistencia.',
      latexFormula: r'V = I \cdot R',
      explicaciones: [
        ExplicacionItem(latex: r'V', texto: ': El voltaje (en voltios, V)'),
        ExplicacionItem(latex: r'I', texto: ': La corriente (en amperios, A)'),
        ExplicacionItem(latex: r'R', texto: ': La resistencia (en ohmios, Ω)'),
      ],
    ),
  ],

  inercia: [
    InstruccionFormula(
      descripcion:
          'La inercia es la resistencia de un objeto a cambiar su estado de movimiento. Cuanto mayor sea la masa de un objeto, mayor será su inercia.',
      latexFormula: r'I = m \cdot r^2',
      explicaciones: [
        ExplicacionItem(
            latex: r'I',
            texto: ': La inercia (en kilogramos por metro cuadrado, kg/m²)'),
        ExplicacionItem(
            latex: r'm', texto: ': La masa del objeto (en kilogramos, kg)'),
        ExplicacionItem(
            latex: r'r',
            texto:
                ': La distancia del objeto al eje de rotación (en metros, m)'),
      ],
    ),
  ],
  // Otras instrucciones si es necesario
);
