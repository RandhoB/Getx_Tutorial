import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //contextless
      navigatorKey: navigatorKey,
      theme: ThemeData.dark().copyWith(),
      home: const HomeView(),
    );
  }
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

get currentContext {
  return navigatorKey.currentState!.context;
}
