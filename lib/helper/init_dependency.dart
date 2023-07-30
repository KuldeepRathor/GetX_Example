import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controller/list_controller.dart';
import '../controller/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
