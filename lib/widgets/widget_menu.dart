import 'package:flutter/material.dart';
import 'package:mayo9/widgets/widget2.dart';
import 'package:mayo9/widgets/widget3.dart';

import '../pagina/pagina_2.dart';
import '../pagina/pagina_3.dart';
import 'mi_tarjeta.dart';

class WidgetMenu extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            onTap: () {
              // cerrar el drawer
              Navigator.pop(context);
              // yendo a una pagina (o router)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagina2()),
              );
            },
            hoverColor: Colors.orangeAccent,
            title: const Text("Ir a la segunda pagina"),
            leading: Image.asset("assets/001-camera.png"),
            trailing: const Text("el3"),
          ),
          ListTile(
            onTap: () {
              // cerrar el drawer
              Navigator.pop(context);
              // yendo a una pagina (o router)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagina3()),
              );
            },
            hoverColor: Colors.orangeAccent,
            title: const Text("Ir a la tercera pagina"),
            leading: Image.asset("assets/002-history.png"),
            trailing: const Text("el3"),
          ),
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
          const SizedBox(
            height: 10,
          ),
          MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
          const SizedBox(
            height: 10,
          ),
          MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
          const SizedBox(
            height: 10,
          ),
          MiTarjeta("Titulo1", subtitulo: "subtitulo2"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

}