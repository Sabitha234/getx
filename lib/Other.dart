import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller.dart';
class Other extends StatelessWidget {
  const Other({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can ask Get to find a Controller that is being used by another page and redirect you to it.
    final Controller c = Get.find();
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
