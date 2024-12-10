
import 'package:flutter/material.dart';

import '../util/app_dimensions.dart';


class AppbarText extends StatelessWidget {

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  const AppbarText({
    super.key,
    required this.text,
    this.color =  Colors.black,
    this.size = 0,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: 'Raleway',
      fontSize: size == 0 ? Dimensions.font20 : size,
      fontWeight: fontWeight,
      color: color,
    ),
    );
  }
}