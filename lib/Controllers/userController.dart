import 'package:get/get.dart';

class UserController extends GetxController {
  RxMap<String, dynamic> userData = <String, dynamic>{}.obs;
  RxBool active = false.obs;
   void setUserData(Map<String, dynamic> data) {
    userData.value = data;
    active.value=true;

  }
   void logout() {
    userData.value = {};
    active.value=false;

  }
}
