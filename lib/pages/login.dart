import 'package:catering_app/pages/registration.dart';
import "package:flutter/material.dart";
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:http/http.dart' as http;
import 'menu_page.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailLogin = TextEditingController();
  final TextEditingController _passwordLogin = TextEditingController();
  var wrongCredential = false;
  void _login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      var data = {
        "email": _emailLogin.text,
        "password": _passwordLogin.text,
      };

      var url = Uri.parse("http://192.168.43.202/login.php");
      var response = await http.post(url, body: data);

      var here = jsonDecode(response.body);

      if (here['status'] == 200) {
        setState(() {
          wrongCredential = false;
        });
        Get.to(const MenuPage());
      } else {
        print("THIS IS THE " + wrongCredential.toString());
        setState(() {
          wrongCredential = true;
        });
      }
    }
  }

  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(85), child: MyAppBar()),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              const Text(
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 15.0,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[900]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(144))),
                      child: const Text(
                        "Sign up with Facebook",
                        style: TextStyle(fontSize: 10.80),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[500]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(144))),
                      child: const Text(
                        "Sign up with Google+",
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 18.0,
                      child: wrongCredential
                          ? Center(
                              child: Text("Wrong credentials",
                                  style: const TextStyle(color: Colors.red)))
                          : null,
                    ),
                    const Text(
                      "user-email",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: _emailLogin,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your email";
                        }
                        if (!EmailValidator.validate(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                      // controller: _emailController,
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: "Email address",
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //       color: Colors.grey, width: 3.0),
                        // ),
                      ),
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: _passwordLogin,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your password";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                      obscureText: true,
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 3.0)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              ElevatedButton(
                onPressed: _login,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[600]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(100.0))),
                child: const Text("Sign in"),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text("Forgot Password",
                  style: TextStyle(
                      color: Colors.green[700],
                      decoration: TextDecoration.underline)),
              const SizedBox(
                height: 15.0,
              ),
              const Divider(
                height: 5.0,
                thickness: 1.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (_) => const Registration()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(144))),
                child: const Text(
                  "Sign up New Account",
                  style: TextStyle(fontSize: 10.80),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
