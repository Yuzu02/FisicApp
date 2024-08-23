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
        ExplicacionItem(
            latex: r'G', texto: ': Constante de gravitación universal'),
        ExplicacionItem(
            latex: r'm_1', texto: ': Masa del primer objeto (en kg)'),
        ExplicacionItem(
            latex: r'm_2', texto: ': Masa del segundo objeto (en kg)'),
        ExplicacionItem(
            latex: r'r', texto: ': Distancia entre los objetos (en metros, m)'),
      ],
    ),
  ],

  velocidadMedia: [
    InstruccionFormula(
      descripcion:
          'La velocidad media es el cociente entre el desplazamiento y el tiempo transcurrido.',
      latexFormula: r'{v} = \frac{\Delta x}{\Delta t}',
      explicaciones: [
        ExplicacionItem(latex: r'{v}', texto: ': Velocidad media (en m/s)'),
        ExplicacionItem(
            latex: r'\Delta x', texto: ': Desplazamiento (en metros)'),
        ExplicacionItem(
            latex: r'\Delta t', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],

  aceleracionMedia: [
    InstruccionFormula(
      descripcion:
          'La aceleración media es el cambio de velocidad dividido por el tiempo transcurrido.',
      latexFormula: r'{a} = \frac{\Delta v}{\Delta t}',
      explicaciones: [
        ExplicacionItem(latex: r'{a}', texto: ': Aceleración media (en m/s²)'),
        ExplicacionItem(
            latex: r'\Delta v', texto: ': Cambio de velocidad (en m/s)'),
        ExplicacionItem(
            latex: r'\Delta t', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],

  rapidez: [
    // Instrucción para rapidez
    InstruccionFormula(
      descripcion:
          'La rapidez es el cociente entre la distancia recorrida y el tiempo transcurrido. A diferencia de la velocidad, la rapidez no tiene en cuenta la dirección del movimiento.',
      latexFormula: r'r = \frac{d}{t}',
      explicaciones: [
        ExplicacionItem(latex: r'r', texto: ': Rapidez (en m/s)'),
        ExplicacionItem(
            latex: r'd', texto: ': Distancia recorrida (en metros)'),
        ExplicacionItem(
            latex: r't', texto: ': Tiempo transcurrido (en segundos)'),
      ],
    ),
  ],

  movimientoRectilineo: [
    // Velocidad Final
    InstruccionFormula(
      descripcion:
          'La velocidad final es la velocidad inicial más el producto de la aceleración y el tiempo.',
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
      descripcion:
          'La posición en un movimiento rectilíneo uniformemente acelerado se calcula sumando el desplazamiento inicial más el producto de la velocidad inicial y el tiempo, más la mitad del producto de la aceleración y el tiempo al cuadrado.',
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
      descripcion:
          'La velocidad al cuadrado es la suma del cuadrado de la velocidad inicial más el doble del producto de la aceleración y el desplazamiento.',
      latexFormula: r'v_f^2 = v_i^2 + 2 \cdot a \cdot \Delta x',
      explicaciones: [
        ExplicacionItem(
            latex: r'v_f^2', texto: ': Velocidad final al cuadrado (en m²/s²)'),
        ExplicacionItem(
            latex: r'v_i^2',
            texto: ': Velocidad inicial al cuadrado (en m²/s²)'),
        ExplicacionItem(latex: r'a', texto: ': Aceleración (en m/s²)'),
        ExplicacionItem(
            latex: r'\Delta x', texto: ': Desplazamiento (en metros)'),
      ],
    ),
  ],

  capacitoresSerie: [
    InstruccionFormula(
        descripcion:
            'Cuando los capacitores están conectados en serie, la capacitancia equivalente se calcula sumando las inversas de las capacitancias individuales. La capacitancia equivalente es siempre menor que la capacitancia del capacitor con menor valor en la serie.',
        latexFormula:
            r'\frac{1}{C_{eq}} = \frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}',
        explicaciones: [
          ExplicacionItem(
              latex: r'C_{eq}',
              texto: ': La capacitancia equivalente (en faradios, F)'),
          ExplicacionItem(
              latex: r'C_1',
              texto: ': La capacitancia del primer capacitor (en faradios, F)'),
          ExplicacionItem(
              latex: r'C_2',
              texto:
                  ': La capacitancia del segundo capacitor (en faradios, F)'),
          ExplicacionItem(
              latex: r'C_3',
              texto: ': La capacitancia del tercer capacitor (en faradios, F)'),
        ]),
    InstruccionFormula(
        descripcion:
            'En una conexión en serie, el voltaje total aplicado a la serie de capacitores es la suma de los voltajes aplicados a cada capacitor individualmente.',
        latexFormula: r'V_{total} = V_1 + V_2 + V_3',
        explicaciones: [
          ExplicacionItem(
              latex: r'V_{total}',
              texto:
                  ': El voltaje total aplicado a la serie de capacitores (en voltios, V)'),
          ExplicacionItem(
              latex: r'V_1, V_2, V_3',
              texto:
                  ': El voltaje individual en cada capacitor (en voltios, V)')
        ]),
    InstruccionFormula(
        descripcion:
            'La carga en cada capacitor en una conexión en serie es la misma y está dada por la fórmula de carga del capacitor, que depende de la capacitancia y el voltaje aplicado.',
        latexFormula: r'Q_1 = Q_2 = Q_3',
        explicaciones: [
          ExplicacionItem(
              latex: r'Q',
              texto: ': La carga en cada capacitor (en culombios, C)'),
        ]),
  ],

  capacitoresParalelo: [
    InstruccionFormula(
      descripcion:
          'En un circuito con capacitores en paralelo, la capacitancia total es la suma de las capacitancias individuales de cada capacitor. El voltaje es el mismo en todos los capacitores, y la carga total es la suma de las cargas en cada capacitor.',
      latexFormula: r'C_{eq} = C_1 + C_2 + C_3',
      explicaciones: [
        ExplicacionItem(
            latex: r'C_{eq}',
            texto: ': Capacitancia equivalente (en faradios, F)'),
        ExplicacionItem(
            latex: r'C_1, C_2, C_3',
            texto: ': Capacitancias individuales (en faradios, F)'),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'El voltaje en capacitores conectados en paralelo es el mismo para todos ellos.',
      latexFormula: r'V_1 = V_2 = V_3',
      explicaciones: [
        ExplicacionItem(
            latex: r'V_1, V_2, V_3',
            texto: ': Voltaje en cada capacitor (en voltios, V)'),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'La carga total en capacitores conectados en paralelo es la suma de las cargas individuales en cada capacitor.',
      latexFormula: r'Q_{total} = Q_1 + Q_2 + Q_3',
      explicaciones: [
        ExplicacionItem(
            latex: r'Q_{total}', texto: ': Carga total (en coulombs, C)'),
        ExplicacionItem(
            latex: r'Q_1, Q_2, Q_3',
            texto: ': Cargas individuales en cada capacitor (en coulombs, C)'),
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
  ],

  densidadesElectricas: [
    InstruccionFormula(
      descripcion:
          'La densidad lineal de carga ( lambda ) representa la carga eléctrica distribuida a lo largo de una longitud.',
      latexFormula: r'\lambda = \frac{q}{l}',
      explicaciones: [
        ExplicacionItem(
          latex: r'\lambda',
          texto: 'Densidad lineal de carga (en Coulombs por metro, C/m)',
        ),
        ExplicacionItem(
          latex: r'q',
          texto: 'Carga total (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'l',
          texto: 'Longitud (en metros, m)',
        ),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'La densidad superficial de carga ( sigma ) describe la carga eléctrica distribuida sobre una superficie. ',
      latexFormula: r'\sigma = \frac{q}{S}',
      explicaciones: [
        ExplicacionItem(
          latex: r'\sigma',
          texto:
              'Densidad superficial de carga (en Coulombs por metro cuadrado, C/m²)',
        ),
        ExplicacionItem(
          latex: r'q',
          texto: 'Carga total (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'S',
          texto: 'Área de la superficie (en metros cuadrados, m²)',
        ),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'La densidad volumétrica de carga ( ho ) indica la cantidad de carga distribuida en un volumen. ',
      latexFormula: r'\rho = \frac{q}{V}',
      explicaciones: [
        ExplicacionItem(
          latex: r'\rho',
          texto:
              ': Densidad volumétrica de carga (en Coulombs por metro cúbico, C/m³)',
        ),
        ExplicacionItem(
          latex: r'q',
          texto: ': Carga total (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'V',
          texto: ': SVolumen (en metros cúbicos, m³)',
        ),
      ],
    ),
  ],

  campoPotencialElectrico: [
    InstruccionFormula(
      descripcion:
          'Determinar la magnitud del campo eléctrico en un punto específico, dependiendo de la cantidad de carga y la distancia desde esa carga',
      latexFormula: r'E = k \cdot \frac{Q}{r^2}',
      explicaciones: [
        ExplicacionItem(
          latex: r'E',
          texto: ' : Campo eléctrico (en Newtons por Coulomb, N/C)',
        ),
        ExplicacionItem(
          latex: r'k',
          texto:
              ' : Constante de Coulomb (en Newtons·metros cuadrados por Coulomb cuadrado, N·m²/C²)',
        ),
        ExplicacionItem(
          latex: r'Q',
          texto: ' : Carga (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'r',
          texto:
              ' : Distancia desde la carga al punto de interés (en metros, m)',
        ),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'El potencial eléctrico representa la energía potencial por unidad de carga en un punto en el campo eléctrico, determinada por la distancia a la carga que lo genera',
      latexFormula: r'V = k \cdot \frac{Q}{r}',
      explicaciones: [
        ExplicacionItem(
          latex: r'V',
          texto: ' : Potencial eléctrico (en Voltios, V)',
        ),
        ExplicacionItem(
          latex: r'k',
          texto:
              ' : Constante de Coulomb (en Newtons·metros cuadrados por Coulomb cuadrado, N·m²/C²)',
        ),
        ExplicacionItem(
          latex: r'Q',
          texto: ' : Carga (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'r',
          texto: ' : Distancia desde la carga al punto (en metros, m)',
        ),
      ],
    ),
    InstruccionFormula(
      descripcion:
          'La intensidad del campo eléctrico ( E ) debido a una carga ( q )',
      latexFormula: r'E = k \cdot \frac{q}{r^2}',
      explicaciones: [
        ExplicacionItem(
          latex: r'E',
          texto: ' : Campo eléctrico (en Newtons por Coulomb, N/C)',
        ),
        ExplicacionItem(
          latex: r'k',
          texto:
              ' : Constante de Coulomb (en Newtons·metros cuadrados por Coulomb cuadrado, N·m²/C²)',
        ),
        ExplicacionItem(
          latex: r'q',
          texto: ' : Carga (en Coulombs, C)',
        ),
        ExplicacionItem(
          latex: r'r',
          texto: ' : Distancia desde la carga al punto (en metros, m)',
        ),
      ],
    ),
    InstruccionFormula(
      descripcion: 'El flujo eléctrico ( ΦE ) a través de una superficie plana',
      latexFormula: r'\Phi_E = E \cdot A \cdot \cos(\theta)',
      explicaciones: [
        ExplicacionItem(
          latex: r'\Phi_E',
          texto:
              ' : Flujo eléctrico (en Newtons·metros cuadrados por Coulomb, N·m²/C)',
        ),
        ExplicacionItem(
          latex: r'E',
          texto: ' : Campo eléctrico (en Newtons por Coulomb, N/C)',
        ),
        ExplicacionItem(
          latex: r'A',
          texto: ' : Área de la superficie (en metros cuadrados, m²)',
        ),
        ExplicacionItem(
          latex: r'\theta',
          texto:
              ' : Ángulo entre el campo eléctrico y la normal a la superficie (en radianes, rad)',
        ),
      ],
    ),
  ],
  
  movimientoCircular: [
    InstruccionFormula(
      descripcion:
          'La velocidad angular ( ω ) es la rapidez con la que un objeto se mueve a lo largo de un círculo o una trayectoria circular.',
      latexFormula: r'\omega = \frac{\theta}{t}',
      explicaciones: [
        ExplicacionItem(
            latex: r'\omega',
            texto: 'Velocidad angular (en radianes por segundo, rad/s)'),
        ExplicacionItem(
            latex: r'\theta', texto: 'Ángulo recorrido (en radianes, rad)'),
        ExplicacionItem(
            latex: r't', texto: 'Tiempo transcurrido (en segundos, s)'),
      ],
    ),
  ],
  
  trabajoEnergia: [
    InstruccionFormula(
      descripcion:
          'El trabajo ( W ) realizado por una fuerza ( F ) sobre un objeto se calcula multiplicando la magnitud de la fuerza por la distancia recorrida en la dirección de la fuerza.',
      latexFormula: r'W = F \cdot d \cdot \cos(\theta)',
      explicaciones: [
        ExplicacionItem(latex: r'W', texto: 'Trabajo realizado (en joules, J)'),
        ExplicacionItem(latex: r'F', texto: 'Fuerza aplicada (en newtons, N)'),
        ExplicacionItem(
            latex: r'd', texto: 'Distancia recorrida (en metros, m)'),
        ExplicacionItem(
            latex: r'\theta',
            texto:
                'Ángulo entre la fuerza y la dirección del movimiento (en radianes, rad)'),
      ],
    ),
  ],
  
  mru: [
    InstruccionFormula(
      descripcion:
          'El movimiento rectilíneo uniforme (MRU) es un tipo de movimiento en el que un objeto se desplaza en línea recta con velocidad constante.',
      latexFormula: r'v = \frac{\Delta x}{\Delta t}',
      explicaciones: [
        ExplicacionItem(
            latex: r'v',
            texto: 'Velocidad constante (en metros por segundo, m/s)'),
        ExplicacionItem(
            latex: r'\Delta x', texto: 'Desplazamiento total (en metros, m)'),
        ExplicacionItem(
            latex: r'\Delta t',
            texto: 'Tiempo total transcurrido (en segundos, s)'),
      ],
    ),
  ],
  
  conversionesLongitud: [
    InstruccionFormula(
      descripcion:
          'Para convertir una longitud de kilómetros a metros, se multiplica por 1000 en caso contrario se divide por 1000.',
      latexFormula: r'1 km = 1000 m',
      explicaciones: [
        ExplicacionItem(latex: r'1 km', texto: '1 kilómetro'),
        ExplicacionItem(latex: r'1000 m', texto: '1000 metros'),
      ],
    ),
  ],

  conversionesMasa: [
    InstruccionFormula(
      descripcion:
          'Para convertir una masa de gramos a kilogramos, se divide por 1000 en caso contrario se multiplica por 1000.',
      latexFormula: r'1 g = 0.001 kg',
      explicaciones: [
        ExplicacionItem(latex: r'1 g', texto: '1 gramo'),
        ExplicacionItem(latex: r'0.001 kg', texto: '0.001 kilogramos'),
      ],
    ),
  ],

  conversionesTiempo: [
    InstruccionFormula(
      descripcion:
          'Para convertir un tiempo de minutos a horas, se divide por 60 en caso contrario se multiplica por 60.',
      latexFormula: r'1 min = 0.0167 h',
      explicaciones: [
        ExplicacionItem(latex: r'1 min', texto: '1 minuto'),
        ExplicacionItem(latex: r'0.0167 h', texto: '0.0167 horas'),
      ],
    ),
  ],

  conversionesTemperatura: [
    InstruccionFormula(
      descripcion:
          'Para convertir una temperatura de grados Celsius a Fahrenheit, se multiplica por 9/5 y se suma 32. Para convertir de Fahrenheit a Celsius, se resta 32 y se multiplica por 5/9.',
      latexFormula: r'C = \frac{F - 32}{1.8}',
      explicaciones: [
        ExplicacionItem(latex: r'C', texto: 'Temperatura en grados Celsius'),
        ExplicacionItem(latex: r'F', texto: 'Temperatura en grados Fahrenheit'),
      ],
    ),
  ],

  conversionesArea: [
    InstruccionFormula(
      descripcion:
          'Para convertir un área de metros cuadrados a kilómetros cuadrados, se divide por 1000000 en caso contrario se multiplica por 1000000.',
      latexFormula: r'1 m² = 0.000001 km²',
      explicaciones: [
        ExplicacionItem(latex: r'1 m²', texto: '1 metro cuadrado'),
        ExplicacionItem(
            latex: r'0.000001 km²', texto: '0.000001 kilómetros cuadrados'),
      ],
    ),
  ],

  conversionesVelocidad: [
    InstruccionFormula(
      descripcion:
          'Para convertir una velocidad de kilómetros por hora a metros por segundo, se multiplica por 0.2778 en caso contrario se divide por 0.2778.',
      latexFormula: r'1 km/h = 0.2778 m/s',
      explicaciones: [
        ExplicacionItem(latex: r'1 km/h', texto: '1 kilómetro por hora'),
        ExplicacionItem(
            latex: r'0.2778 m/s', texto: '0.2778 metros por segundo'),
      ],
    ),
  ],

  conversionesVolumen: [
  InstruccionFormula(
    descripcion:
        'Para convertir un volumen de litros a mililitros, se multiplica por 1000. Para convertir de mililitros a litros, se divide por 1000.',
    latexFormula: r'1 L = 1000 mL',
    explicaciones: [
      ExplicacionItem(latex: r'1 L', texto: '1 litro'),
      ExplicacionItem(latex: r'1000 mL', texto: '1000 mililitros'),
    ],
  ),
  ]
  // Otras instrucciones si es necesario
);
