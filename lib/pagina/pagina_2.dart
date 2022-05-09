import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    return Pagina2Estado();
  }
}
class Pagina2Estado extends State<Pagina2>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pagina 2")),
      body: Text("pagina 2"),
    );
  }

}