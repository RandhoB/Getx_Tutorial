import 'package:get/get.dart';
import '../view/counter_view.dart';

class CounterController extends GetxController {
  CounterView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  int angka = 10;

  var itemCount = 0.obs;
  var myName = "Bagas".obs;

  numberPlus() {
    angka++;
    itemCount++;
  }

  numberMinus() {
    angka--;
    itemCount--;
  }
}
