import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../view/http_request_view.dart';

class HttpRequestController extends GetxController {
  HttpRequestView? view;

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

  var myList = [].obs;

  loadUser() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    myList.value = obj["data"];
    print(myList);
  }
}
