import 'package:get/get.dart';

class IncrementController extends GetxController{
  var count = 0.obs;

  void increment(){
    count++;
  }

  void clearCounter(){
  
    count.value=0;
  
}
}