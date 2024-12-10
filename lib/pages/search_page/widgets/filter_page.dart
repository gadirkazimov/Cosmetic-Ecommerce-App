import 'package:flutter/material.dart';
import 'package:task_1/models/product_models.dart';
import 'package:task_1/widgets/appbar_text.dart';
import 'package:provider/provider.dart';
import 'package:task_1/pages/search_page/widgets/filter_row.dart';
import 'package:task_1/widgets/my_button.dart';

import '../../../util/app_dimensions.dart';


class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppbarText(text: 'Фильтры')
      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(vertical: Dimensions.height12, horizontal: Dimensions.width12),
        child: Column(
          children: [
            Consumer<NewModels>(builder: (context, value, child) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.filterText.length,
                  itemBuilder: (context, index) {
                    return FilterRow(
                        text1: value.filterText[index][0],
                        text2:  value.filterText[index][1]
                    );
                  }
              );
            }),
            SizedBox(height: Dimensions.height270,),
            const SizedBox(
              width: double.infinity,
              child: MyButton(text: 'Применить фильтры'),
            )
          ],
        )
      ),
    );
  }
}


