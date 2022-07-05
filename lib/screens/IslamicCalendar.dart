import 'dart:convert';

import 'package:get/get.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class IslamicCalendar extends StatelessWidget {
  IslamicCalendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HijriCalendar.setLocal('ar');
    var hijri = HijriCalendar.now();
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 30,
                        color: Color(0xffD7B13D),
                      )),
                ),
              ],
            ),
            SizedBox(height: 80),
               Center(
              child: Container(
                height: 200,
                width: 600,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/moon.png'))),
              ),
            ),
            SizedBox(height: 40),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${hijri.dayWeName}  ',
                    style: TextStyle(
                        fontSize: 50,
                        color: Color(0xffD7B13D),
                        fontWeight: FontWeight.bold)),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <InlineSpan>[
                      //  WidgetSpan(child:Text('${hijri.dayWeName}  ', style: TextStyle(fontSize: 20, color: Colors.black),) ),
                      WidgetSpan(
                          child: Text(
                        '${hijri.hDay.toString()} ',
                        style: TextStyle(fontSize: 35, color: Color(0xffD7B13D)),
                      )),
                      WidgetSpan(
                          child: Text(
                        '${hijri.longMonthName} ',
                        style: TextStyle(fontFamily: 'Noor_e_Quran', fontSize: 35, color: Color(0xffD7B13D)),
                      )),
                      WidgetSpan(
                          child: Text(
                        '${hijri.hYear} AH',
                        style: TextStyle(fontSize: 35, color: Color(0xffD7B13D)),
                      )),
                    ])),
              ],
            )),
          ],
        )),
      ),
    );
  }
}
