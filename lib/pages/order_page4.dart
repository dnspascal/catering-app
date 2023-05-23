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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PackageMeal(
                        packageName: const {"package": "Package 1-P1500.00"},
                        foodItem: const [
                          "Ndizi",
                          "Chips Kavu",
                          "Nyama Rosti",
                          "Tambi"
                        ],
                      ),
                      PackageMeal(packageName: const {
                        "package": "Package 2-P2500.00"
                      }, foodItem: const [
                        "Tambi",
                        "soda",
                        "Nyama Mbuzi",
                        "Kachumbari"
                      ])
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FittedBox(
                  child: Row(children: [
                    PackageMeal(
                        packageName: const {"package": "Package 3-P2300.00"},
                        foodItem: const ["ndizi", "nyama mbuzi", "kachumbari"])
                  ]),
                ),
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
                              MaterialStateProperty.all(Colors.green[700]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90))),
                      child:const FittedBox(
                        child:  Text(
                          "Submit",
                          style: TextStyle(fontSize: 20.80),
                        ),
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
  final Map<String, String> packageName;
  final List<String> foodItem;

  PackageMeal({super.key, required this.foodItem, required this.packageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            packageName['package'].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
          Table(
            defaultColumnWidth: const IntrinsicColumnWidth(),
            border: TableBorder.all(color: Colors.grey),
            children: [
              for (final item in foodItem)
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 10.0, 72.0, 10.0),
                          child: Text(item.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ])
            ],
          ),
          Radio(onChanged: (value) {}, groupValue: "package", value: 1)
        ],
      ),
    );
  }
}
