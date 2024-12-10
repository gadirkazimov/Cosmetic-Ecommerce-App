import 'package:flutter/material.dart';

import '../../../util/app_dimensions.dart';


class CategoriesTile extends StatelessWidget {

  final String imagePath;
  final String text;

  const CategoriesTile({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Container(
            margin: EdgeInsets.only(right: Dimensions.width20),
            height: Dimensions.height80,
            width: Dimensions.height80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: Dimensions.height10,),
          Container(
              margin: EdgeInsets.only(right: Dimensions.width20),
              child: Text(text)
          )
        ],
    );
  }
}
