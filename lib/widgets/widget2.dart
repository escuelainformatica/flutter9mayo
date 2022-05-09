import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget
{
  String campo1;
  String campo2;
  String campo3;
  Color color1;
  Color color2;
  Color color3;


  Widget2(this.campo1,this.campo2,this.campo3,
      this.color1,this.color2,this.color3,
      {Key? key}) : super(key: key);

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