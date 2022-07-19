import 'package:durood_e_pak/screens/QiblaDirectionScreen.dart';
import 'package:durood_e_pak/screens/languageConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/HomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LanguageTranslation(),
      locale: const Locale('ur', 'PK'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
