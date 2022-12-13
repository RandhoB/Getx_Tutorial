import 'package:get/get.dart';
import 'package:getx_tutorial/core.dart';
import 'package:getx_tutorial/module/animations/view/animations_view.dart';
import 'package:getx_tutorial/module/counter/view/counter_view.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;

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

  List menuList = [
    {
      "name": "Counter",
      "view": const CounterView(),
    },
    {
      "name": "Animations",
      "view": const AnimationsView(),
    },
    {
      "name": "Http Request",
      "view": const HttpRequestView(),
    },
    {
      "name": "Product List",
      "view": const ProductListView(),
    },
  ];
}
