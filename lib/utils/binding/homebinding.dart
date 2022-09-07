import 'package:get/get.dart';
import 'package:untitled/controller/homecontroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => HomeController(city: 'cairo'));
  }

}