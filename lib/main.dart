import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx/Controller.dart';

import 'Other.dart';

void main() {
  runApp(GetMaterialApp(home:MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Controller c=Get.put(Controller());
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    return Scaffold(
      appBar: AppBar(title: Obx(()=>Text("Clicks: ${c.count}"))),
        // Use Obx(()=> to update Text() whenever count is changed.
        body: Center(child: ElevatedButton(
          // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
            child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
        floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed:c.increment));
  }
}
