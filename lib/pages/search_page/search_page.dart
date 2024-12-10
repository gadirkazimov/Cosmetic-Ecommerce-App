import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_1/pages/search_page/widgets/skin_type.dart';
import 'package:task_1/widgets/big_text.dart';
import 'package:task_1/widgets/main_text.dart';
import 'package:task_1/widgets/my_button.dart';
import 'package:task_1/widgets/small_text.dart';

import '../../util/app_dimensions.dart';



class SearchPage extends StatelessWidget {


  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width12, vertical: Dimensions.height12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      leading: SvgPicture.asset('assets/icons/search.svg'),
                      title: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Поиск',
                          hintStyle: TextStyle(fontSize: Dimensions.font18),
                          border: InputBorder.none
                        ),
                      ),
                  ),
                  const Divider(),
                  SizedBox(height: Dimensions.height30,),
                  const MainText(text: 'Назначение'),
                  const MainText(text: 'Тип средства '),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SkinType()));
                      },
                      child: const MainText(text: 'Тип кожи')
                  ),
                  const MainText(text: 'Линия косметики'),
                  const MainText(text: 'Наборы'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const MainText(text: 'Акции'),
                    SizedBox(width: Dimensions.width5,),
                    SvgPicture.asset('assets/icons/percentange.svg')
                  ],),
                  const MainText(text: 'Консультация с косметологом ', margin: 5,),
                ],
              ),
            ),
            Container(
              height: Dimensions.height200,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: Dimensions.height20, horizontal: Dimensions.width20),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/search_page.png'),
                  fit: BoxFit.cover
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(text: 'Составим схему идеального домашнего ухода'),
                  const SmallText(text: '10 вопросов о вашей коже'),
                  SizedBox(
                      width: Dimensions.width80,
                      child: const MyButton(text: 'Пройти тест '))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
