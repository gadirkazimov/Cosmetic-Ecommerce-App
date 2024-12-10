import 'package:flutter/material.dart';

import '../../../util/app_dimensions.dart';

class ContainerFilter extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const ContainerFilter({super.key, required this.text1, required this.text2, required this.text3, required this.text4});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: Dimensions.width179,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius12),
                border: Border.all(color: Colors.grey,)
              ),
              child: Center(child: Text(text1)),
            ),
            SizedBox(width: Dimensions.width10,),
            Container(
              width: Dimensions.width179,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20 ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  border: Border.all(color: Colors.grey,)
              ),
              child: Center(child: Text(text2)),
            )
          ],
        ),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Container(
              width: Dimensions.width179,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  border: Border.all(color: Colors.grey,)
              ),
              child: Center(child: Text(text3)),
            ),
            SizedBox(width: Dimensions.width10,),
            Container(
              width: Dimensions.width179,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  border: Border.all(color: Colors.grey,)
              ),
              child: Center(child: Text(text4)),
            )
          ],
        ),
      ],
    );
  }
}
