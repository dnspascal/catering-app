import 'package:catering_app/pages/home_page.dart';

import 'package:catering_app/pages/order_page3.dart';
import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

class OrderPage2 extends StatelessWidget {
  Map<String, dynamic> page2;
  OrderPage2({super.key, required this.page2});
  final TextEditingController _venue = TextEditingController();

  final TextEditingController _occassion = TextEditingController();

  final _formkey3 = GlobalKey<FormState>();

  late String venue;

  late String occassion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Place Your Order",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Delicious meals are just a few clicks away",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    LinearProgressIndicator(
                      value: 50 / 100,
                      minHeight: 20,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 65.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4.0, 0, 0),
                          child: Text(
                            '50%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Venue Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                Form(
                    key: _formkey3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Venue',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 40,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "please select a venue";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    venue = value!;
                                  },
                                  controller:_venue,
                                  cursorColor: Colors.grey,
                                  keyboardType: TextInputType.streetAddress,
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    hintText: "Complete Address of venue",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Occassion',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 40,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "occassion field can not be empty";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    occassion = value!;
                                  },
                                  controller:_occassion,
                                  cursorColor: Colors.grey,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    hintText: "Select Occassion",
                                    suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.grey,
                                        )),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[700]),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90))),
                        child: const FittedBox(
                          child: Text(
                            "Previous",
                            style: TextStyle(fontSize: 20.00),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formkey3.currentState!.validate()) {
                            _formkey3.currentState!.save();
                            page2.addAll({
                              "r_venue":_venue.text,
                              "r_ocassion":_occassion.text,
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => OrderPage3(page3: page2)));
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal[700]),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90))),
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 20.80),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomePage()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(144))),
                  child: const FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Back To Home",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.home)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
