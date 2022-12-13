import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import 'package:getx_tutorial/core.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Rumah"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                //alt+shift+v
                itemCount: controller.menuList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.menuList[index];
                  return InkWell(
                    onTap: () => Get.to(item["view"]),
                    child: Card(
                      child: ListTile(
                        title: Text("${item["name"]}"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
