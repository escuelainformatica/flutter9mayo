import 'package:flutter/material.dart';
import 'package:mayo9/pagina/pagina_inicial.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaInicial()
    );
  }

}
