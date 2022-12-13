import 'dart:math';

import 'package:flutter/material.dart';
import '../controller/counter_controller.dart';
import 'package:getx_tutorial/core.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      init: CounterController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Counter"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() {
                  return Text(
                    "${controller.itemCount}",
                    style: const TextStyle(
                      fontSize: 40.0,
                    ),
                  );
                }),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.plus_one),
                  label: const Text("Tambah"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.numberPlus();
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.exposure_minus_1),
                  label: const Text("Kurang"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    controller.numberMinus();
                  },
                ),
                const Divider(),
                Obx(() {
                  return Text(
                    "${controller.myName}",
                    style: const TextStyle(
                      fontSize: 45.0,
                    ),
                  );
                }),
                ElevatedButton.icon(
                  icon: const Icon(Icons.recycling),
                  label: const Text("Berubah"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    var r = Random().nextInt(100);
                    controller.myName.value = "Bagaskara $r";
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
