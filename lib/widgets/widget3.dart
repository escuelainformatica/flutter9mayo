import 'package:flutter/material.dart';

class Widget3 extends StatelessWidget
{
  String campo1;
  String campo2;
  String campo3;
  Color color1;
  Color color2;
  Color color3;


  Widget3({Key? key,
    required this.campo1,
    required this.campo2,
    required this.campo3,
    this.color1=Colors.deepPurpleAccent,
    this.color2=Colors.orangeAccent,
    this.color3=Colors.red,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text(campo1,style: TextStyle(color: color1)),
        Text(campo2,style: TextStyle(color: color2)),
        Text(campo3,style: TextStyle(color: color3)),
      ],
    );
  }

}