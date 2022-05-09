import 'package:flutter/material.dart';

import '../widgets/widget_menu.dart';

class Pagina4 extends StatefulWidget {
  String paisSeleccionado;
  Pagina4({Key? key,required this.paisSeleccionado}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Pagina4();
  }
}

class _Pagina4 extends State<Pagina4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: WidgetMenu(),
        appBar: AppBar(
          title: Text("pagina 4"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
                // do something
              },
            )
          ],
        ),
        body: Text(widget.paisSeleccionado));
  }
}
