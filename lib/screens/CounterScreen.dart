import 'package:durood_e_pak/controllers/CounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final IncrementController incrementController =
      Get.put(IncrementController());
  @override
  Widget build(BuildContext context) {
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
                    child: IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_ios_new_outlined, size: 30,color: Color(0xffD7B13D),)),
                  ),
                ],
              ),
      
              SizedBox(height: 50),
      
      
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => Text(
                        '${incrementController.count}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 150,
                          color: Color(0xffD7B13D),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
      
                    //             ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(90))),
                    //       child: const Icon(Icons.add, size: 60),
                    //       onPressed: () {incrementController.increment();
                    //       },
                    // ),
      
                    GestureDetector(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                             border: Border.all(color:Colors.white),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Icon(Icons.add, size: 90, color: Color(0xffD7B13D)),
                        ),
                      
                        onTap: () {
                          incrementController.increment();
                        }),
      
                    // ElevatedButton(onPressed: (){
                    // // Get.find<IncrementController>().clearCounter();
                    // incrementController.clearCounter();
      
                    //   print(IncrementController().count);
      
                    // }, child: const Text("Clear Counter"))
                    SizedBox(height: 20),
      
                    GestureDetector(
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "clearButton".tr,
                          style: TextStyle(color: Color(0xffD7B13D), fontSize: 18),
                        )),
                      ),
                      onTap: () {
                        incrementController.clearCounter();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
