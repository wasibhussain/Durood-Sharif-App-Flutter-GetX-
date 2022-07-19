import 'package:durood_e_pak/screens/QiblaDirectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CounterScreen.dart';
import 'HaftawarDuroodScreen.dart';
import 'IslamicCalendar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List locale = [
    {'name': 'اردو', 'locale': const Locale('ur', 'PK')},
    {'name': 'English', 'locale': const Locale('en', 'US')}, 
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);

  }

  buildDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
        //    backgroundColor: Color(0xffD7B13D),
            title: Text('Change Language',style: TextStyle(color: Color(0xff274833)),),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder:  (context, index) {
                    return Padding(padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        updateLanguage(locale[index]['locale']);
                      },
                      child: Text(locale[index]['name'],style: TextStyle(color: Color(0xff274833))),
                    ),);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(color: Colors.grey);
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Container(
                height: 250,
                width: 700,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/mosque.png'))),
              ),
            ),
            Text(
              "duroodSharifTitle".tr,
              style: TextStyle(
                  color: Color(0xffD7B13D),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "category1".tr,
                  style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              onTap: () {
                Get.to(HaftawarDuroodSharifScreen());
              },
            ),
            SizedBox(height: 15),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "category2".tr,
                  style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              onTap: () {
                Get.to(CounterScreen());
              },
            ),
            SizedBox(height: 15),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "category3".tr,
                  style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              onTap: () {
                Get.to(IslamicCalendar());
              },
            ),
            SizedBox(height: 15),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "category4".tr,
                  style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              onTap: () {
                Get.to(QiblaCompass());
              },
            ),
            SizedBox(height: 15),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "chooseLanguage".tr,
                  style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              onTap: () {
                buildDialog(context);
              },
            ),
            SizedBox(height: 50),
            Text('Developed By Wasib Hussain' ,style: TextStyle(
                      color: Color(0xffD7B13D),
                      fontSize: 11,
                      ))
          ],
        )),
      ),
    );
  }
}
