import 'package:catering_app/models/user.dart';

class DataSource{
  static final List<User> users = [
    User(email: "dnspascal094@gmail.com", password: "1234"),
  ];
  static Future<User> getUserByEmail(String email)async{
    return users.firstWhere((user) => user.email == email,);
  }
}