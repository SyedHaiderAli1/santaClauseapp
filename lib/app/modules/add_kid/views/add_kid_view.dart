import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_kid_controller.dart';

class AddKidView extends GetView<AddKidController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('AddKidView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Nice"),
                  Switch(
                      value: controller.status.value,
                      onChanged: (value){
                        controller.status.value=value;
                      }),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Enter Name")
                ),
                controller: controller.name,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Enter Country")
                ),
                controller: controller.country,
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){controller.addKid();
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
