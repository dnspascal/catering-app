import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/pages/login.dart';

import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';
import 'dart:convert';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _register() async {
    if (_formkey1.currentState!.validate()) {
      _formkey1.currentState!.save();
      var url = Uri.parse("http://192.168.43.202/indexflutter.php");

      var data = {
        'first': _firstnameController.text,
        'last': _lastnameController.text,
        'email': _emailController.text,
        'address': _addressController.text,
        'contact': _phoneNumberController.text,
        'password': _passwordController.text,
      };
      var response = await http.post(url, body: data);

      var res = await http.get(url);
      // var respo = jsonDecode(res.body);
      // print(respo.runtimeType);
      // print(respo["status"]);
      if (response.statusCode == 200) {
        showDialog(
            context: context,
            builder: (context) => SizedBox(
                  height: 20.0,
                  child: AlertDialog(
                    content: const Text("Registration successful"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"))
                    ],
                  ),
                ));

        // _firstnameController.clear();
        // _lastnameController.clear();
        // _emailController.clear();
        // _addressController.clear();
        // _phoneNumberController.clear();
        // _passwordController.clear();
        // _confirmPasswordController.clear();
      } else {
        showDialog(
            context: context,
            builder: (context) => SizedBox(
                  height: 20.0,
                  child: AlertDialog(
                    content: Text('Registration failed'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("TRY AGAIN"))
                    ],
                  ),
                ));
      }
    }
  }

  bool checkEmail = false;
  Future<void> checkExistingEmail() async {
    // checkEmail = false;

    print("INSIDE ELSE COMPARISON");
    var url = Uri.parse("http://192.168.43.202/gethtml.php");
    var res = await http.get(url);

    var vares = jsonDecode(res.body);

    vares.forEach((item) => {
          print("wrong item is " + item['email'] + _emailController.text),
          if (item["email"] == _emailController.text)
            {
              print(item['email']),
              print("NEW EMSIL" + _emailController.text),
              checkEmail = true
            }
        });

    print(checkEmail);
  }

  bool onCheck = false;
  final _formkey1 = GlobalKey<FormState>();
  late String email;
  late String firstname;
  late String password;
  late String lastname;
  late String address;
  late String phoneNumber;
  late String confirmPassword;

  @override
  // void dispose() {
  //   _firstnameController.dispose();
  //   _lastnameController.dispose();
  //   _emailController.dispose();
  //   _addressController.dispose();
  //   _confirmPasswordController.dispose();
  //   _passwordController.dispose();

  //   super.dispose();
  // }

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
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(180))),
                  child: const Text("Sign up with Facebook"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[600]),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(180))),
                  child: const Text("Sign up with Google+"),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "OR",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter your firstname";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            firstname = value!;
                          },
                          controller: _firstnameController,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3.0),
                            ),
                            hintText: "first name ",
                          ),
                        ),
                        const Text(
                          "last-name",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter your lastname";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            lastname = value!;
                          },
                          controller: _lastnameController,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            hintText: "last name ",
                          ),
                        ),
                        const Text(
                          "user-email",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          validator: (value) {
                            // checkExistingEmail();

                            if (value == null || value.isEmpty) {
                              return "please enter your email address";
                            }
                            if (!EmailValidator.validate(value)) {
                              return 'Please enter a valid email address';
                            }

                            return null;
                          },
                          onSaved: (value) {
                            email = value!;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
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
                          ),
                        ),
                        const Text(
                          "user-address",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter your address";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            address = value!;
                          },
                          controller: _addressController,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 5.0),
                            ),
                            hintText: "Eg: P.O.BOX 05 SINZA DAR ES SALAAM",
                          ),
                        ),
                        const Text(
                          "user-contact",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter your phone-number";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            phoneNumber = value!;
                          },
                          controller: _phoneNumberController,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 5.0),
                            ),
                            hintText: "Eg:0652948016",
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
                          controller: _passwordController,
                          obscureText: true,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 5.0),
                            ),
                            hintText: "password",
                          ),
                        ),
                        const Text(
                          "Confirm password",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "confirm field is empty";
                            } else if (value != _passwordController.text) {
                              return "Password does not match";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            confirmPassword = value!;
                          },
                          obscureText: true,
                          controller: _confirmPasswordController,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 5.0),
                            ),
                            hintText: "Repeat Password",
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
                    Text.rich(
                        TextSpan(text: "I agree to the", children: <TextSpan>[
                      TextSpan(
                          text: " terms and condition of the Catering",
                          style: TextStyle(
                              color: Colors.green[700],
                              decoration: TextDecoration.underline))
                    ]))
                  ]),
                ),
                ElevatedButton(
                  onPressed: _register,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(180))),
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
        )),
      ),
    );
  }
}
