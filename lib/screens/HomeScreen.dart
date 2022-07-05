import 'package:durood_e_pak/screens/QiblaDirectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CounterScreen.dart';
import 'HaftawarDuroodScreen.dart';
import 'IslamicCalendar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Container(
                height: 250,
                width: 700,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/mosque.png'))),
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
            SizedBox(height: 20),
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
              SizedBox(height: 20),
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
            ),            SizedBox(height: 20),
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
            )
          ],
        )),
      ),
    );
  }
}
