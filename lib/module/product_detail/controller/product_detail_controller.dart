import 'package:get/get.dart';
import '../view/product_detail_view.dart';

class ProductDetailController extends GetxController {
  ProductDetailView? view;

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

  saveProduct() async {
    var photo = view!.item["photo"];
    var productName = view!.item["product_name"];
    Get.snackbar("title", productName);
  }
}
