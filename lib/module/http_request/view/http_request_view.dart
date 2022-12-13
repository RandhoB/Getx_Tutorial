import 'package:flutter/material.dart';
import '../controller/http_request_controller.dart';
import 'package:getx_tutorial/core.dart';
import 'package:get/get.dart';

class HttpRequestView extends StatelessWidget {
  const HttpRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HttpRequestController>(
      init: HttpRequestController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("HttpRequest"),
            actions: [
              ElevatedButton.icon(
                icon: const Icon(Icons.refresh),
                label: const Text("Refresh"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.loadUser();
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.myList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = controller.myList[index];
                    return InkWell(
                      onTap: () => controller.myList.removeAt(index),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              "${item["avatar"]}",
                            ),
                          ),
                          title: Text("${item["first_name"]}"),
                          subtitle: Text("${item["last_name"]}"),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
