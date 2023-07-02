import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/userController.dart';
import '../pages/login.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({
    super.key,
  });
  final UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    Widget childWidget;
    if (userController.active.value == true) {
      childWidget = Obx(() {
        final username = userController.userData.value['first'];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            username,
            style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize:20.0),
          ),
        );
      });
    } else {
      childWidget = IconButton(
          onPressed: () {
            Get.to(const Login());
          },
          icon: const Icon(
            Icons.person_2_outlined,
            color: Colors.white,
            size: 40,
          ));
    }
    return AppBar(
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'img/icn2.png',
          ),
          const SizedBox(
            width: 5,
          ),
          const Text('VILLA Catering'),
        ],
      ),
      centerTitle: true,
      titleSpacing: 30,
      toolbarHeight: 85,
      backgroundColor: Colors.black.withOpacity(0.9),
      actions: [
        Center(child: Padding(padding: const EdgeInsets.all(8.0), child: childWidget))
      ],
    );
  }
}
