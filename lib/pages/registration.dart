import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool onCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400.0,
                // height: 500.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blueAccent[900]),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(180))),
                        child: const Text("Sign up with Facebook"),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[700]),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(180))),
                        child: const Text("Sign up with Google+"),
                      ),
                      const Text('OR'),
                      Form(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "first-name",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "first name ",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "second-name",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "last name ",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "user-email",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "Email address",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "user-address",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText:
                                        "Eg: P.O.BOX 05 SINZA DAR ES SALAAM",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "user-contact",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "Eg:0652948016",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Password",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "password",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Repeat Password",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                    hintText: "Repeat Password",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 3.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                            text:
                                                " terms and condition of the Catering",
                                            style: TextStyle(
                                                color: Colors.green[700],
                                                decoration:
                                                    TextDecoration.underline))
                                      ]))
                                ]),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blueAccent[900]),
                                    fixedSize: MaterialStateProperty.all(
                                        const Size.fromWidth(180))),
                                child: const Text("Sign up"),
                              ),
                              const SizedBox(height:5),
                              Text("Login",
                                  style: TextStyle(
                                      color: Colors.green[700],
                                      decoration: TextDecoration.underline))
                            ]),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
