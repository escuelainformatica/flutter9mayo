import 'package:flutter/material.dart';

import '../modelo/libro.dart';

class Pagina2 extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    return Pagina2Estado();
  }
}
class Pagina2Estado extends State<Pagina2>
{
  List<Libro> libros=[Libro(1,"libro1",500),Libro(2,"libro2",5400),Libro(3,"libro3",6000)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pagina 2")),
      body: const Text("pagina 2"),
    );
  }

}