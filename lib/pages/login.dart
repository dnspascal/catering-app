import "package:flutter/material.dart";
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(85), child: MyAppBar()),
      drawer: const MyDrawer(),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        color: Colors.grey[500],
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const Text(
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent[900]),
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromWidth(120))),
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
                            MaterialStateProperty.all(Colors.red[700]),
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromWidth(120))),
                    child: const Text(
                      "Sign up with Google+",
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ),
                ],
              ),
              const Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const Text("Email address"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: " Enter email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 3.0)),
                ),
              ),
              const Text("Password"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 3.0)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent[900]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(100.0))),
                child: const Text("Sign in"),
              ),
              Text("Login",
                                  style: TextStyle(
                                      color: Colors.green[700],
                                      decoration: TextDecoration.underline))
            ],
          ),
        ),
      ),
    );
  }
}
