import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page2.dart';
import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';


class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: MyDrawer(),
        body: MyOrder());
  }
}

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  value: 25 / 100,
                  minHeight: 20,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        '25%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ]),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'No. of Pax',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: "No of Pax",
                            suffixIcon: FittedBox(
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            border: const OutlineInputBorder(
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
                        'Date of Event',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                        child: SizedBox(
                          height: 40.0,
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 0),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "mm/dd/yyyy",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    showDatePicker(
                                        context: context,
                                        initialDate: DateTime(2010),
                                        firstDate: DateTime(2023),
                                        lastDate: DateTime(2030));
                                  },
                                  icon: const Icon(
                                    Icons.calendar_month,
                                    color: Colors.grey,
                                  )),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.orange[400]!,
                          child: const Text(
                            'Check if date is available',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Time of Event',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40.0,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: "--:-- --",
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
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const OrderPage2()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[700]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(90))),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20.80),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(144))),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
    );
  }
}
