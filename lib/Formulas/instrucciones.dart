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
      latexFormula: r'{v} = \frac{\Delta {x}}{\Delta t}',
      explicaciones: [
        ExplicacionItem(
            latex: r'{v}',
            texto: ': La velocidad (en metros por segundo, m/s)'),
        ExplicacionItem(
            latex: r'\Delta {x}',
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
  
  accionReaccion: [
    InstruccionFormula(
      descripcion:
          'La ley de acción y reacción establece que para cada acción hay una reacción igual y opuesta. Esto significa que la fuerza que un objeto A ejerce sobre un objeto B es igual en magnitud y opuesta en dirección a la fuerza que el objeto B ejerce sobre el objeto A.',
      latexFormula: r'{F}_{accion} = -{F}_{reaccion}',
      explicaciones: [
        ExplicacionItem(
            latex: r'{F}_{accion}', 
            texto: ': La fuerza de acción (en newtons, N)'),
        ExplicacionItem(
            latex: r'{F}_{reaccion}', 
            texto: ': La fuerza de reacción (en newtons, N)'),
      ],
    ),
  ],
  
  gravitacionUniversal: [
    InstruccionFormula(
      descripcion:
          'La ley de la gravitación universal de Newton establece que cada partícula en el universo atrae a cada otra partícula con una fuerza que es proporcional al producto de sus masas e inversamente proporcional al cuadrado de la distancia entre sus centros.',
      latexFormula: r'F = G \cdot \frac{m_1 \cdot m_2}{r^2}',
      explicaciones: [
        ExplicacionItem(
            latex: r'F', texto: ': La fuerza gravitacional (en newtons, N)'),
        ExplicacionItem(latex: r'G', texto: ': Constante de gravitación universal'),
        ExplicacionItem(latex: r'm_1', texto: ': Masa del primer objeto (en kg)'),
        ExplicacionItem(latex: r'm_2', texto: ': Masa del segundo objeto (en kg)'),
        ExplicacionItem(latex: r'r', texto: ': Distancia entre los objetos (en metros, m)'),
      ],
    ),
  ],
  
  velocidadMedia: [
    InstruccionFormula(
      descripcion: 'La velocidad media es el cociente entre el desplazamiento y el tiempo transcurrido.',
      latexFormula: r'{v} = \frac{\Delta x}{\Delta t}',
      explicaciones: [
        ExplicacionItem(latex: r'{v}', texto: ': Velocidad media (en m/s)'),
        ExplicacionItem(latex: r'\Delta x', texto: ': Desplazamiento (en metros)'),
        ExplicacionItem(latex: r'\Delta t', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],
  
  aceleracionMedia: [
    InstruccionFormula(
      descripcion: 'La aceleración media es el cambio de velocidad dividido por el tiempo transcurrido.',
      latexFormula: r'{a} = \frac{\Delta v}{\Delta t}',
      explicaciones: [
        ExplicacionItem(latex: r'{a}', texto: ': Aceleración media (en m/s²)'),
        ExplicacionItem(latex: r'\Delta v', texto: ': Cambio de velocidad (en m/s)'),
        ExplicacionItem(latex: r'\Delta t', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],
  
  rapidez: [
    // Instrucción para rapidez
    InstruccionFormula(
      descripcion: 'La rapidez es el cociente entre la distancia recorrida y el tiempo transcurrido. A diferencia de la velocidad, la rapidez no tiene en cuenta la dirección del movimiento.',
      latexFormula: r'r = \frac{d}{t}',
      explicaciones: [
        ExplicacionItem(latex: r'r', texto: ': Rapidez (en m/s)'),
        ExplicacionItem(latex: r'd', texto: ': Distancia recorrida (en metros)'),
        ExplicacionItem(latex: r't', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],

  movimientoRectilineo: [

    // Velocidad Final
    InstruccionFormula(
      descripcion: 'La velocidad final es la velocidad inicial más el producto de la aceleración y el tiempo.',
      latexFormula: r'v_f = v_i + a \cdot t',
      explicaciones: [
        ExplicacionItem(latex: r'v_f', texto: ': Velocidad final (en m/s)'),
        ExplicacionItem(latex: r'v_i', texto: ': Velocidad inicial (en m/s)'),
        ExplicacionItem(latex: r'a', texto: ': Aceleración (en m/s²)'),
        ExplicacionItem(latex: r't', texto: ': Tiempo (en segundos)'),
      ],
    ),

    // Posición
    InstruccionFormula(
      descripcion: 'La posición en un movimiento rectilíneo uniformemente acelerado se calcula sumando el desplazamiento inicial más el producto de la velocidad inicial y el tiempo, más la mitad del producto de la aceleración y el tiempo al cuadrado.',
      latexFormula: r'x = x_i + v_i \cdot t + \frac{1}{2} \cdot a \cdot t^2',
      explicaciones: [
        ExplicacionItem(latex: r'x', texto: ': Posición (en metros)'),
        ExplicacionItem(latex: r'x_i', texto: ': Posición inicial (en metros)'),
        ExplicacionItem(latex: r'v_i', texto: ': Velocidad inicial (en m/s)'),
        ExplicacionItem(latex: r'a', texto: ': Aceleración (en m/s²)'),
        ExplicacionItem(latex: r't', texto: ': Tiempo (en segundos)'),
      ],
    ),

    // Velocidad al Cuadrado
    InstruccionFormula(
      descripcion: 'La velocidad al cuadrado es la suma del cuadrado de la velocidad inicial más el doble del producto de la aceleración y el desplazamiento.',
      latexFormula: r'v_f^2 = v_i^2 + 2 \cdot a \cdot \Delta x',
      explicaciones: [
        ExplicacionItem(latex: r'v_f^2', texto: ': Velocidad final al cuadrado (en m²/s²)'),
        ExplicacionItem(latex: r'v_i^2', texto: ': Velocidad inicial al cuadrado (en m²/s²)'),
        ExplicacionItem(latex: r'a', texto: ': Aceleración (en m/s²)'),
        ExplicacionItem(latex: r'\Delta x', texto: ': Desplazamiento (en metros)'),
      ],
    ),
  ],
  
  capacitoresSerie: [
    InstruccionFormula(
        descripcion:
            'Cuando los capacitores están conectados en serie, la capacitancia equivalente se calcula sumando las inversas de las capacitancias individuales. La capacitancia equivalente es siempre menor que la capacitancia del capacitor con menor valor en la serie.',
        latexFormula: r'\frac{1}{C_{eq}} = \frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}',
        explicaciones: [
          ExplicacionItem(
              latex: r'C_{eq}', texto: ': La capacitancia equivalente (en faradios, F)'),
          ExplicacionItem(latex: r'C_1', texto: ': La capacitancia del primer capacitor (en faradios, F)'),
          ExplicacionItem(latex: r'C_2', texto: ': La capacitancia del segundo capacitor (en faradios, F)'),
          ExplicacionItem(latex: r'C_3', texto: ': La capacitancia del tercer capacitor (en faradios, F)'),
        ]
      ),
    InstruccionFormula(
        descripcion:
            'En una conexión en serie, el voltaje total aplicado a la serie de capacitores es la suma de los voltajes aplicados a cada capacitor individualmente.',
        latexFormula: r'V_{total} = V_1 + V_2 + V_3',
        explicaciones: [
          ExplicacionItem(
              latex: r'V_{total}', texto: ': El voltaje total aplicado a la serie de capacitores (en voltios, V)'),
          ExplicacionItem(latex: r'V_1, V_2, V_3', texto: ': El voltaje individual en cada capacitor (en voltios, V)')
        ]
        ),
    InstruccionFormula(
        descripcion:
            'La carga en cada capacitor en una conexión en serie es la misma y está dada por la fórmula de carga del capacitor, que depende de la capacitancia y el voltaje aplicado.',
        latexFormula: r'Q_1 = Q_2 = Q_3',
        explicaciones: [
          ExplicacionItem(
              latex: r'Q', texto: ': La carga en cada capacitor (en culombios, C)'),
        ]
        ),
  ],
  
  capacitoresParalelo: [
    InstruccionFormula(
      descripcion: 'En un circuito con capacitores en paralelo, la capacitancia total es la suma de las capacitancias individuales de cada capacitor. El voltaje es el mismo en todos los capacitores, y la carga total es la suma de las cargas en cada capacitor.',
      latexFormula: r'C_{eq} = C_1 + C_2 + C_3',
      explicaciones: [
        ExplicacionItem(latex: r'C_{eq}', texto: ': Capacitancia equivalente (en faradios, F)'),
        ExplicacionItem(latex: r'C_1, C_2, C_3', texto: ': Capacitancias individuales (en faradios, F)'),
      ],
    ),
    InstruccionFormula(
      descripcion: 'El voltaje en capacitores conectados en paralelo es el mismo para todos ellos.',
      latexFormula: r'V_1 = V_2 = V_3',
      explicaciones: [
        ExplicacionItem(latex: r'V_1, V_2, V_3', texto: ': Voltaje en cada capacitor (en voltios, V)'),
      ],
    ),
    InstruccionFormula(
      descripcion: 'La carga total en capacitores conectados en paralelo es la suma de las cargas individuales en cada capacitor.',
      latexFormula: r'Q_{total} = Q_1 + Q_2 + Q_3',
      explicaciones: [
        ExplicacionItem(latex: r'Q_{total}', texto: ': Carga total (en coulombs, C)'),
        ExplicacionItem(latex: r'Q_1, Q_2, Q_3', texto: ': Cargas individuales en cada capacitor (en coulombs, C)'),
      ],
    ),
  ],
  
  capacitores: [
    InstruccionFormula(
      descripcion:
        'La carga ( Q ) almacenada en un capacitor se calcula multiplicando la capacitancia ( C ) del capacitor por el voltaje ( V ) aplicado.',
      latexFormula: r'Q = C \cdot V',
      explicaciones: [
        ExplicacionItem(
          latex: r'Q',
          texto: 'Carga almacenada en el capacitor (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'C',
          texto: 'Capacitancia del capacitor (en Faradios, F)',
        ),
        ExplicacionItem(
          latex: r'V',
          texto: 'Voltaje aplicado (en Voltios, V)',
        ),
      ],
    ),
  ]

  // Otras instrucciones si es necesario
);
