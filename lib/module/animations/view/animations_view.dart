import 'package:flutter/material.dart';
import '../controller/animations_controller.dart';
import 'package:getx_tutorial/core.dart';
import 'package:get/get.dart';

class AnimationsView extends StatelessWidget {
  const AnimationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimationsController>(
      init: AnimationsController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Animations"),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Obx(() {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 900),
                      height: 100,
                      width: 100,
                      color:
                          controller.animate.value ? Colors.green : Colors.red,
                    );
                  }),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Berubah"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      controller.animate.value = !controller.animate.value;
                    },
                  ),
                  const Divider(),
                  Obx(() {
                    return AnimatedRotation(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                      ),
                      turns: (controller.animateRotation.value ? 360 : 0) / 360,
                      duration: const Duration(milliseconds: 900),
                    );
                  }),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Add"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.animateRotation.value =
                          !controller.animateRotation.value;
                    },
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
