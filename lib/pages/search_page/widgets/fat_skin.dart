import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:task_1/models/product_models.dart';
import 'package:task_1/pages/search_page/widgets/filter_page.dart';
import 'package:task_1/widgets/main_text.dart';
import 'package:task_1/pages/search_page/widgets/filter_container.dart';
import 'package:task_1/pages/search_page/widgets/filter_item_tile.dart';

import '../../../util/app_dimensions.dart';

class FatSkin extends StatelessWidget {
  const FatSkin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: Dimensions.width10, left: Dimensions.width10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: Dimensions.width230,
                  child: MainText(text: 'Средства            для жирной кожи', size: Dimensions.font24,),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('28 продуктов', style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w500),),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterPage()));
                      },
                      child: SvgPicture.asset('assets/icons/filter.svg')
                  )
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterContainer(text: 'Очищение'),
                  FilterContainer(text: 'Увлажнение'),
                  FilterContainer(text: 'Регенерация'),
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              Consumer<NewModels>(builder: (context, value, child) {
                return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: value.newItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.9),
                    itemBuilder: (context, index) {
                      return FilterItemTile(
                        image: value.newItems[index][0],
                        subtitle: value.newItems[index][1],
                        title1: value.newItems[index][2],
                        title2: value.newItems[index][3],
                        price: value.newItems[index][4],
                      );
                    });
              })
            ],
          ),
        ),
      ),
    );
  }
}


