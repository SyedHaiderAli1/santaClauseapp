import 'package:get/get.dart';

import '../modules/add_kid/bindings/add_kid_binding.dart';
import '../modules/add_kid/views/add_kid_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_KID,
      page: () => AddKidView(),
      binding: AddKidBinding(),
    ),
  ];
}
