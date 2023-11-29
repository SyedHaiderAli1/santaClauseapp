import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kid_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
            onPressed: () {
              Get.toNamed(Routes.ADD_KID);
            },
          ),
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Kid Track'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: controller.kids.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  controller.kidUpdate(controller.kids.elementAt(i), i);
                },
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                ),
                              ],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.maxFinite,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, right: 0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7.0, vertical: 5),
                                          child: Text(
                                            "${"Id"} ${controller.kids.elementAt(i).id}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 3),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Name: ",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Text(
                                              "${controller.kids.elementAt(i).name}",
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 3),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Country: ",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Text(
                                              "${controller.kids.elementAt(i).country}",
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 3),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Status: ",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Text(
                                              controller.kids
                                                          .elementAt(i)
                                                          .status ==
                                                      true
                                                  ? "Nice"
                                                  : "Naughty",
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            },
          ),
        ));
  }
}
