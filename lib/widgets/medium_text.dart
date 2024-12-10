
import 'package:flutter/material.dart';

import '../util/app_dimensions.dart';


class MediumText extends StatelessWidget {

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;


  const MediumText({
    super.key,
    required this.text,
    this.color =  Colors.black,
    this.size = 0,
    this.fontWeight = FontWeight.w600,

  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: 'Raleway',
      fontSize: size == 0 ? Dimensions.font16 : size,
      fontWeight: fontWeight,
      color: color,
    ),
    );
  }
}