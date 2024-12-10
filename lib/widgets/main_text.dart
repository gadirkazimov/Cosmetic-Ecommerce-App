
import 'package:flutter/material.dart';

import '../util/app_dimensions.dart';


class MainText extends StatelessWidget {

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final double margin;

  const MainText({
    super.key,
    required this.text,
    this.color =  Colors.black,
    this.size = 0,
    this.fontWeight = FontWeight.w600,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: margin==0 ? Dimensions.height25 : margin),
        child: Text(text, style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: fontWeight,
          color: color,
        ),
        ),
    );
  }
}