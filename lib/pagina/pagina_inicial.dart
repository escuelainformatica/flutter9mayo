import 'package:flutter/material.dart';
import 'package:mayo9/pagina/pagina_2.dart';
import 'package:mayo9/widgets/mi_tarjeta.dart';
import 'package:mayo9/widgets/widget2.dart';
import 'package:mayo9/widgets/widget3.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            Widget2("hola", "mundo", "fin", Colors.green, Colors.cyan,
                Colors.indigo),
            Widget3(
              campo1: "hola",
              campo2: "mundo",
              campo3: "fin",
              color1: Colors.red,
            ),
            GestureDetector(
              onTap: () {
                // Scaffold.of(context)
                //Scaffold.of(context).openEndDrawer();

                // volver atras en la navegacion
                Navigator.pop(context);
                // yendo a una pagina (o router)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina2()),
                );
              },
              child: MiTarjeta("Ir a la pagina 2", subtitulo: "subtitulo2"),
            ),
            SizedBox(
              height: 10,
            ),
            MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
            SizedBox(
              height: 10,
            ),
            MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
            SizedBox(
              height: 10,
            ),
            MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("pagina inicial")),
      body: Text("hola"),
    );
  }
}
