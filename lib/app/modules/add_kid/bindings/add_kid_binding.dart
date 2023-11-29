import 'package:get/get.dart';

import '../controllers/add_kid_controller.dart';

class AddKidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddKidController>(
      () => AddKidController(),
    );
  }
}
