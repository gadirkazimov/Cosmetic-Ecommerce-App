import 'package:flutter/material.dart';
import 'package:task_1/widgets/price_text.dart';

import '../../../util/app_dimensions.dart';
import '../../../widgets/medium_text.dart';


class PopularTile extends StatelessWidget {

  final String image;
  final String title1;
  final String title2;
  final String subtitle;
  final String price;


  const PopularTile({super.key, required this.image, required this.title1, required this.title2, required this.subtitle, required this.price, });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Dimensions.width12),
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
          MediumText(text: subtitle, color: Colors.black87, fontWeight: FontWeight.w500,),
          MediumText(text: title1),
          MediumText(text: title2),
          PriceText(text: price)


        ],
      ),
    );
  }
}
