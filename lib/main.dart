import 'package:flutter/material.dart';
import 'package:catering_app/app.dart';
import 'package:get/get.dart';

import 'Controllers/userController.dart';

void main() {
  Get.put(UserController()); // Register UserController here
  runApp(const Catering());
}
