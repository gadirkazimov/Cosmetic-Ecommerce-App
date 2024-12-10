import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/pages/home_page/widgets/categories_tile.dart';
import 'package:task_1/pages/home_page/widgets/container_filter.dart';
import 'package:task_1/pages/home_page/widgets/discount_tile.dart';
import 'package:task_1/pages/home_page/widgets/home_care_tile.dart';
import 'package:task_1/pages/home_page/widgets/popular_tile.dart';
import 'package:task_1/widgets/big_text.dart';
import 'package:task_1/pages/search_page/widgets/filter_item_tile.dart';
import 'package:task_1/widgets/my_button.dart';

import '../../models/product_models.dart';
import '../../util/app_dimensions.dart';
import '../../widgets/small_text.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions.height370,
                child: Stack(
                  children: [
                    Positioned(
                        left: 0,
                        right: 0,
                        child: Container(
                          height: Dimensions.height350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/background_image.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        )
                    ),
                    Positioned(
                        top: Dimensions.height200,
                        left: Dimensions.width5,
                        right: Dimensions.width5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: 'Скидка -15%', size: Dimensions.font40, color: Colors.white,),
                                SizedBox(height: Dimensions.height5,),
                                const BigText(text: 'Сыворотка', color: Colors.white,),
                                const BigText(text: 'HA EYE & NECK SERUM', color: Colors.white,)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: Dimensions.width5, vertical: Dimensions.height5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 1.5)
                              ),
                              child: const SmallText(text: 'Перейти к акции', color: Colors.white, fontWeight: FontWeight.w700,)
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: Dimensions.width12),
                child: Consumer<NewModels>(builder: (context, value, child) {
                  return SizedBox(
                    height: Dimensions.height120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: value.categories.length,
                        itemBuilder: (context, index) {
                      return CategoriesTile(
                          imagePath: value.categories[index][0],
                          text: value.categories[index][1]
                      );
                    }),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width12),
                child: const BigText(text: 'Новинки')
              ),
              Container(
                  width: Dimensions.width120,
                  height: Dimensions.height5,
                  margin: EdgeInsets.only(left: Dimensions.width12),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFE4FEF9),
                      Color(0xFF66F6DC)
                    ])
                  ),
              ),
              SizedBox(height: Dimensions.height20,),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width12),
                child: Consumer<NewModels>(builder: (context, value, child) {
                  return  SizedBox(
                    height: Dimensions.height300,
                    child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: value.newItems.length,
                          itemBuilder: (context, index) {
                            return FilterItemTile(
                              image: value.newItems[index][0],
                              subtitle: value.newItems[index][1],
                              title1: value.newItems[index][2],
                              title2: value.newItems[index][3],
                              price: value.newItems[index][4],);
                          },
                    ),
                  );
                }),
              ),
              SizedBox(height: Dimensions.height20,),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, left: Dimensions.width12, bottom: Dimensions.height12),
                height: Dimensions.height280,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/search_page.png'), fit:BoxFit.cover )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(text: 'Моя схема домашнего ухода'),
                    SizedBox(height: Dimensions.height15,),
                    SizedBox(
                      height: Dimensions.height130,
                      child: Consumer<NewModels>(builder: (context, value, child) {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: value.homeCare.length,
                            itemBuilder: (context, index) {
                          return HomeCareTile(
                              imagePath: value.homeCare[index][0],
                              text: value.homeCare[index][1]);
                        });
                      },),
                    ),
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ответьте на 10 вопросов,'),
                            Text('и мы подберем нужный уход ')
                          ],
                        ),
                        SizedBox(width: Dimensions.width20,),
                        const MyButton(text: 'Пройти тест ')
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width12, top: Dimensions.height12),
                child: const BigText(text: 'Акции')
              ),
              Container(
                width: Dimensions.width120,
                height: Dimensions.height5,
                margin: EdgeInsets.only(left: Dimensions.width12),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFF02980),
                      Color(0xFFFFC0E1)
                    ])
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.width12, top: Dimensions.height20,),
                height: Dimensions.height300,
                child: Consumer<NewModels>(builder: (context, value, child) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.discountItems.length,
                      itemBuilder: (context, index) {
                        return DiscountTile(
                            image: value.discountItems[index][0],
                            title1: value.discountItems[index][1],
                            title2: value.discountItems[index][2],
                            subtitle: value.discountItems[index][3],
                            price1: value.discountItems[index][4],
                            price2: value.discountItems[index][5]
                        );
                      }
                  );
                }),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.height12, horizontal: Dimensions.width12),
                child: const ContainerFilter(
                  text1: 'Для очищения ',
                  text2: 'Для увлажнения',
                  text3: 'Для питания',
                  text4: 'Для омоложения',
                )
              ),
              Padding(
                padding:  EdgeInsets.only(left: Dimensions.width12),
                child: const BigText(text: 'Хиты')
              ),
              Container(
                width: Dimensions.width120,
                height: Dimensions.height5,
                margin: EdgeInsets.only(left: Dimensions.width12),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFF86614),
                      Color(0xFFFCBC5C)
                    ])
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.width12, top: Dimensions.height20, bottom: Dimensions.height20),
                height: Dimensions.height300,
                child: Consumer<NewModels>(builder: (context, value, child) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.popularItems.length,
                      itemBuilder: (context, index) {
                        return PopularTile(
                            image: value.popularItems[index][0],
                            title1: value.popularItems[index][1],
                            title2: value.popularItems[index][2],
                            subtitle: value.popularItems[index][3],
                            price: value.popularItems[index][4],
                        );
                      }
                  );
                }),
              ),
            ],
          ),
        )
    );
  }
}

