import 'package:flutter/material.dart';
import 'package:task_1/widgets/medium_text.dart';
import 'package:task_1/widgets/price_text.dart';

import '../../../util/app_dimensions.dart';


class FilterItemTile extends StatelessWidget {

  final String image;
  final String title1;
  final String title2;
  final String subtitle;
  final String price;

  const FilterItemTile({super.key, required this.image, required this.title1, required this.title2, required this.subtitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height300,
      margin: EdgeInsets.only(right: Dimensions.width15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Dimensions.height200,
              width: Dimensions.height200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: const Color(0xFFf4f4f4)
              ),
            ),
            MediumText(text: subtitle, color: Colors.black87,),
            MediumText(text: title1),
            MediumText(text: title2),
            PriceText(text: '$price ₽' )
          ],
        ),
    );
  }
}
