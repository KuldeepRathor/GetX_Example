import 'package:get/get.dart';
import 'package:getx/controller/list_controller.dart';
import 'package:getx/controller/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
