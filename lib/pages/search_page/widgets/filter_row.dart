import 'package:flutter/material.dart';
import 'package:task_1/widgets/main_text.dart';

import '../../../util/app_dimensions.dart';


class FilterRow extends StatelessWidget {
  final String text1, text2;

  const FilterRow({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText(text: text1, size: Dimensions.font16,),
        MainText(text: text2, size: Dimensions.font16, fontWeight: FontWeight.w500, ),
      ],
    );
  }
}
