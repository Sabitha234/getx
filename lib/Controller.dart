import 'package:get/get.dart';

class Controller extends GetxController{
  var count=0.obs;
  //You can make any variable observable using a simple ".obs".
  increment()=>count++;
}