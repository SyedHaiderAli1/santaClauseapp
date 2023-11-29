import 'package:get/get.dart';
import 'package:kid_app/app/data/kid.dart';

class HomeController extends GetxController {
  RxList<Kid> kids = <Kid>[].obs;

  List<Kid> kidList = [
    Kid(
      id: 1,
      name: 'Fahad',
      country: 'Pakistan',
      status: false,
    ),
    Kid(
      id: 2,
      name: 'Talha',
      country: 'Canada',
      status: true,
    ),
    Kid(
      id: 3,
      name: 'Mike',
      country: 'Sweden',
      status: true,
    ),
    Kid(
      id: 4,
      name: 'Georgi',
      country: 'Unites State',
      status: true,
    ),
  ];

  @override
  void onInit() {
    kids.addAll(kidList);
    super.onInit();
  }

  kidUpdate(Kid kid, index) {
    kids.elementAt(index).status = !kids.elementAt(index).status!;
    kids.elementAt(index) ==
        Kid(
          id: kid.id,
          name: kid.name,
          country: kid.country,
          status: !kid.status!,
        );
    kids.refresh();
  }
}
