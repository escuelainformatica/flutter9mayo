import 'package:flutter/material.dart';

class MiTarjeta extends StatelessWidget {
  String titulo;
  String? subtitulo;

  MiTarjeta(this.titulo,{Key? key,this.subtitulo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Text(titulo),
                Text(titulo)
              ],
            )
        ,)
    );
  }

}