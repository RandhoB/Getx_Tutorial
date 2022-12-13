import 'package:get/get.dart';
import '../view/animations_view.dart';

class AnimationsController extends GetxController {
  AnimationsView? view;

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

  var animate = false.obs;
  var animateRotation = false.obs;
}
