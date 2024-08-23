// /lib/Data/paginas.dart

// Home Pagina
class HomePaginaTexto {
  static const String instruccionesTitulo = 'Instrucciones';
  static const String instruccionesContenido = '''
Esta aplicación te ayudará a calcular fórmulas de física. Para comenzar, selecciona una categoría de todas las disponibles. Luego, selecciona una fórmula de la lista y llena los campos necesarios. Finalmente, presiona el botón de calcular para obtener el resultado.

Si deseas ver las instrucciones de alguna fórmula, selecciona la fórmula y presiona el botón de instrucciones en la parte superior derecha de la pantalla en el formulario de la fórmula seleccionada.
''';

  static const String cerrarTexto = 'Cerrar';
}

// Formulas pagina
class FormulasPaginaTexto {
  static const String formulaNoEncontrada = 'No encontrado';
}

// Formula Detallada Pagina
class FormulaDetalladaPaginaTexto {
  // Instrucciones
  static const String instruccionesNoDisponibles =
      'No hay instrucciones disponibles para esta fórmula.';

  // Formulario
  static const String selectFormulaText = 'Selecciona la fórmula';
  static const String calculateText = 'Calcular';
  static const String errorText = 'Error al evaluar la fórmula';
  static const String fillAllFieldsText = 'Por favor, llena todos los campos';
}
