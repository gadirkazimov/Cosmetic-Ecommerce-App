import 'package:flutter/material.dart';

import '../../../util/app_dimensions.dart';


class FilterContainer extends StatefulWidget {
  final String text;

  const FilterContainer({super.key, required this.text});

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {

  bool isPressed = false;

  void togglePressed () {
    setState(() {
      isPressed =! isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: togglePressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height15, horizontal: Dimensions.width15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius12),
          color: isPressed ? const Color(0xFF171717) : const Color(0xFFF4F4F4),
        ),
        child: Text(widget.text, style: TextStyle(
          color: isPressed ? Colors.white : Colors.black,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}
