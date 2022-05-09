import 'package:flutter/material.dart';
import 'package:mayo9/pagina/pagina_4.dart';

import '../widgets/widget_menu.dart';

class Pagina3 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _Pagina3();
  }
}

// _ de Pagina3, indica que es privado,es decir, esa clase solo es validoa dentro del archivo pagina3_3.dart

class _Pagina3 extends State<Pagina3> {
  var paises=["Chile","Argentina","Peru"];
  var encima=[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: WidgetMenu(),
      appBar: AppBar(
          title: Text("pagina 3"),
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
      body: ListView.builder(
          itemCount: paises.length,
          itemBuilder: (context,fila) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(

                  leading: Image.asset("assets/003-attach.png"),
                  title: Text(paises[fila]),
                  trailing: InkWell(
                      hoverColor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pagina4(paisSeleccionado: paises[fila],)),
                        );
                      },
                      onHover: (value) {
                        setState(() {
                          encima[fila]=value;
                        });
                        //print(value);
                        //print(fila);
                      },
                      child: Image.asset(encima[fila]==false ? "assets/003-attach.png" :  "assets/002-history.png"),
                  )
                )
              ),

            );
          }
      )
    );
  }

}
