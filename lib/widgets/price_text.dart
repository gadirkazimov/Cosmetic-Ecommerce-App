
import 'package:flutter/material.dart';

import '../util/app_dimensions.dart';


class PriceText extends StatelessWidget {

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final TextDecoration decoration;


  const PriceText({
    super.key,
    required this.text,
    this.color =  Colors.black,
    this.size = 0,
    this.fontWeight = FontWeight.w800,
    this.decoration = TextDecoration.none

  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: size == 0 ? Dimensions.font20 : size,
      fontWeight: fontWeight,
      decoration: decoration,
      color: color,
    ),
    );
  }
}