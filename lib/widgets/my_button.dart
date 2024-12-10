import 'package:flutter/material.dart';
import 'package:task_1/widgets/medium_text.dart';

import '../util/app_dimensions.dart';


class MyButton extends StatelessWidget {

  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width12, vertical: Dimensions.height12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius12),
        color: Colors.black
      ),
      child: Center(child: MediumText(text: text, color: Colors.white,))
    );
  }
}
