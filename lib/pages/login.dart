import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/registration.dart';
import "package:flutter/material.dart";
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

import '../models/data_source.dart';
import 'menu_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    const Text(
                      "Email address",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your email";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: " Enter email",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 5.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your email";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
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
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final user = await DataSource.getUserByEmail(email);
                    if (user != null && user.password == password) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomePage()));

                    }else{
                      showDialog(context: context, builder: (context)=>AlertDialog(
                        title: const Text("login failed"),content: Text("invalid email or password"),actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: const Text("OK"))
                        ],));
                    }
                  }
                },
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
                      MaterialPageRoute(builder: (_) => const MenuPage()));
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
