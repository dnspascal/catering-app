import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/payment.dart';
import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

class OrderPage4 extends StatelessWidget {
  const OrderPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: MyDrawer(),
        body: MyOrder());
  }
}

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
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
                    value: 100 / 100,
                    minHeight: 20,
                    backgroundColor: Colors.grey,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(140.0, 4.0, 0.0, 0.0),
                    child: Text(
                      '100%',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [PackageMeal(), PackageMeal()],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: [PackageMeal()]),
              ),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Payment()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal[700]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 20.80),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class PackageMeal extends StatelessWidget {
  const PackageMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Package 1-P1500.00',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        Table(
          defaultColumnWidth: const IntrinsicColumnWidth(),
          border: TableBorder.all(color: Colors.grey),
          children: const [
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 10.0, 78.0, 10.0),
                  child: Text("Ndizi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 10.0, 78.0, 10.0),
                  child: Text("Chips Kavu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 10.0, 78.0, 10.0),
                  child: Text("Nyama Rosti",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 10.0, 78.0, 10.0),
                  child: Text("Tambi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ])
          ],
        ),
        Radio(onChanged: (value) {}, groupValue: "package", value: 1)
      ],
    );
  }
}
