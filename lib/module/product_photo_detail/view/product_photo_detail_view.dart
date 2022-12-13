import 'package:flutter/material.dart';
import '../controller/product_photo_detail_controller.dart';
import 'package:getx_tutorial/core.dart';
import 'package:get/get.dart';

class ProductPhotoDetailView extends StatelessWidget {
  const ProductPhotoDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailController productDetailController = Get.find();
    return GetBuilder<ProductPhotoDetailController>(
      init: ProductPhotoDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductPhotoDetail"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "${productDetailController.view!.item["photo"]}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
