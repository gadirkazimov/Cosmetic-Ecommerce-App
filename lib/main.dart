import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/models/product_models.dart';
import 'package:get/get.dart';
import 'package:task_1/pages/main_page/main_page.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
    statusBarIconBrightness: Brightness.light
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewModels(),
        child: const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Task 1',
            home: MainPage()
        ),
    );
  }
}




