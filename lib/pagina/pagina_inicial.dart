import 'package:flutter/material.dart';
import 'package:mayo9/pagina/pagina_2.dart';
import 'package:mayo9/widgets/mi_tarjeta.dart';
import 'package:mayo9/widgets/widget2.dart';
import 'package:mayo9/widgets/widget3.dart';
import 'package:mayo9/widgets/widget_menu.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PaginaInicialEstado();
  }
}

class PaginaInicialEstado extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: WidgetMenu(),
      appBar: AppBar(title: const Text("pagina inicial")),
      body: const Text("hola"),
    );
  }
}
