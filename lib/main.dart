import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/getx_localization/languages.dart';
import 'package:getxmvvm/Resources/routes/Routes.dart';
import 'package:getxmvvm/View/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}


