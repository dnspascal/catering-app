import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _RegistrationState();
}

class _RegistrationState extends State<Payment> {
  bool onCheck = false;
  final _formkey1 = GlobalKey<FormState>();
  late String email;
  late String password;
  String selectedValue = "Visa Card";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Visa Card", child: Text("Visa Card")),
      const DropdownMenuItem(value: "Master Card", child: Text("Master Card")),
      const DropdownMenuItem(value: "PayPal", child: Text("PayPal")),
      const DropdownMenuItem(value: "American Express", child: Text("American Express")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Form(
                      key: _formkey1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "BILLING ADDRESS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "Full Name :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50.0,
                              child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "full name ",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 15.0,),
                            const Text(
                              "Email :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50.0,
                              child:TextFormField(
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
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "example@example.com",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                            ),
                             const SizedBox(height: 15.0,),
                            const Text(
                              "Address :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50.0,
                              child:TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "room + street + locality",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                            ),
                             const SizedBox(height: 15.0,),
                            const Text(
                              "City :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50.0,
                              child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "Eg: Dar es Salaam",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                            ),
                             const SizedBox(height: 15.0,),
                            FittedBox(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "State :",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 50.0,
                                        width: 144,
                                        child: TextFormField(
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 5.0),
                                            ),
                                            hintText: "Eg:Tanzania",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 3.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Zip Code :",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 50.0,
                                        width: 144,
                                        child: TextFormField(
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 5.0),
                                            ),
                                            hintText: "123 456",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 3.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 100.0,
                            ),
                            const Text(
                              "PAYMENT",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Cards Accepted :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              child: Image.asset(
                                'img/payMethod.png'
                              )
                            ),
                            const SizedBox(
                              height: 50.0,
                            ),
                            const Text(
                              "Mode Of Payment :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            DropdownButton(
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: dropdownItems),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              "Name On Card :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50.0,
                              child:TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "name on card ",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              "Credit Card Number :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                           SizedBox(
                            height: 50.0,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "1111-2222-3333-4444 ",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                           ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              "Exp Month :",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                           SizedBox(
                            height: 50.0,
                            child:  TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 5.0),
                                ),
                                hintText: "january ",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 3.0),
                                ),
                              ),
                            ),
                           ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Exp Year :",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 50.0,
                                        width: 144,
                                        child: TextFormField(
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 5.0),
                                            ),
                                            hintText: "2022",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 3.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "CVV :",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 50.0,
                                        width: 144,
                                        child: TextFormField(
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 5.0),
                                            ),
                                            hintText: "1234",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 3.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width:310.0,
                      height: 50.0,
                      child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color.fromARGB(255, 15, 105, 241)),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(180))),
                      child: const Text("Proceed To Checkout"),
                    ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
