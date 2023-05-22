import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/pages/login.dart';

import '../models/user.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool onCheck = false;
  final _formkey1 = GlobalKey<FormState>();
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[900]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(180))),
                      child: const Text("Sign up with Facebook"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[600]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(180))),
                      child: const Text("Sign up with Google+"),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Form(
                      key: _formkey1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "first-name",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                                hintText: "first name ",
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.grey, width: 3.0),
                                // ),
                              ),
                            ),
                            const Text(
                              "last-name",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, ),
                                ),
                                hintText: "last name ",
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.grey, width: 3.0),
                                // ),
                              ),
                            ),
                            const Text(
                              "user-email",
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
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                hintText: "Email address",
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.grey, width: 3.0),
                                // ),
                              ),
                            ),
                            const Text(
                              "user-address",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "Eg: P.O.BOX 05 SINZA DAR ES SALAAM",
                                // enabledBorder: OutlineInputBorder(
                                  // borderSide: BorderSide(
                                      // color: Colors.grey, width: 3.0),
                                // ),
                              ),
                            ),
                            const Text(
                              "user-contact",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "Eg:0652948016",
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
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "password",
                              //   enabledBorder: OutlineInputBorder(
                              //     borderSide: BorderSide(
                              //         color: Colors.grey, width: 3.0),
                              //   ),
                              ),
                            ),
                            const Text(
                              "Confirm password",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "Repeat Password",
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //       color: Colors.grey, width: 3.0),
                                // ),
                              ),
                            ),
                          ]),
                    ),
                    FittedBox(
                      child: Row(children: [
                        Checkbox(
                          value: onCheck,
                          onChanged: (bool? onCheck1) {
                            setState(() {
                              onCheck = onCheck1!;
                            });
                          },
                        ),
                        Text.rich(TextSpan(
                            text: "I agree to the",
                            children: <TextSpan>[
                              TextSpan(
                                  text: " terms and condition of the Catering",
                                  style: TextStyle(
                                      color: Colors.green[700],
                                      decoration: TextDecoration.underline))
                            ]))
                      ]),
                    ),
                    ElevatedButton(
                      onPressed: ()async {
                        if(_formkey1.currentState!.validate()){
                          _formkey1.currentState!.save();
                          final user =User(email:email,password:password);
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[900]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(180))),
                      child: const Text("Sign up"),
                    ),
                    const SizedBox(height: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Login()));
                      },
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 20.0,
                              decoration: TextDecoration.underline)),
                    )
                  ]),
            ),
          ),
        ));
  }
}
