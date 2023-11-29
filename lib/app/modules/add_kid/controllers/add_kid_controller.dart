import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kid_app/app/data/kid.dart';
import 'package:kid_app/app/modules/home/controllers/home_controller.dart';

class AddKidController extends GetxController {

  TextEditingController name=TextEditingController();
  TextEditingController country=TextEditingController();
  RxBool status=false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  addKid(){
    var id=Get.find<HomeController>().kids.length;
    Get.find<HomeController>().kids.add(
        Kid(
          id: id+1,
          country: country.text,
          name: name.text,
          status:  status.value,
        )
    );
    Get.back();
  }

}
