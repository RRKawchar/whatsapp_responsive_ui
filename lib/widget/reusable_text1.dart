import 'package:flutter/material.dart';

class ReusableText1 extends StatelessWidget {

  final String text;
  final double size;
  Color? color;
  FontWeight? fontWeight;
   ReusableText1({Key? key,required this.text,required this.size,this.color,this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
