
import 'package:durood_e_pak/Constants/DuroodSharifConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DuroodSharifDetailScreen extends StatelessWidget {
   DuroodSharifDetailScreen({required this.duroodSharifConstant}) ;

 DuroodSharifConstants duroodSharifConstant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: SafeArea(
       child:  SingleChildScrollView(
         child: Column(
           children: [
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_ios_new_outlined, size: 30,color: Color(0xffD7B13D),)),
                  ),
                ],
              ),
              SizedBox(height: 20),
             Card(
              elevation: 2,
              color: Color(0xffD7B13D),
              child: Container(
             //  height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(duroodSharifConstant.title,textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Noor_e_Quran',fontSize: 25, wordSpacing: 3)),
                    SizedBox(height:20),
                    Text(duroodSharifConstant.duroodsharif,textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),
                    SizedBox(height:30),
                    Text(duroodSharifConstant.translation,textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Al Qalam Quran', fontSize: 25, )),
                  ],
                ),
              )
              )
                  ),
           ],
         ),
       )));
          }
     
       
    
  }

