import 'package:flutter/material.dart';
import 'package:task_1/pages/search_page/widgets/fat_skin.dart';
import 'package:task_1/widgets/appbar_text.dart';
import 'package:task_1/widgets/main_text.dart';

import '../../../util/app_dimensions.dart';


class SkinType extends StatelessWidget {
  const SkinType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppbarText(text: 'По типу кожи'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height12, horizontal: Dimensions.width12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimensions.height20,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FatSkin()));
                },
                child: const MainText(text: 'Жирная')
            ),
            const MainText(text: 'Комбинированная'),
            const MainText(text: 'Нормальная'),
            const MainText(text: 'Сухая'),
            const MainText(text: 'Любой тип'),
          ],
        ),
      ),
    );
  }
}
