import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page2.dart';
import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

import '../customizable_widgets/MyMenu.dart';

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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Place Your Order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Text("Delicious meals are just a few clicks away"),
            Stack(children: [
               LinearProgressIndicator(
                value: 25 / 100,
                minHeight: 20,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
              ),
              Align(
               
                  child: Row(
                   
                   
                    children: const [
                      SizedBox(
                        width: 32.0,
                      ),
                      Text(
                        '25%',
                        style: TextStyle(color: Colors.white,),
                      ),
                    ],
                  ))
            ]),
            const Text(
              "Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Form(
                child: Column(
              children: [
                const Text('No. of Pax'),
                SizedBox(
                  height: 30,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "No. of Pax",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                    ),
                  ),
                ),
                const Text('Date of Event'),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 0),
                                focusedBorder: InputBorder.none,
                                hintText: "mm/dd/yyyy",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
              const Text('Time of Event'),
                SizedBox(
                  height: 30,
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
    
              ElevatedButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> const OrderPage2()));},
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
               ElevatedButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> const HomePage()));},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[900]),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(144))),
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                               Text(
                                "Back To Home",
                                style: TextStyle(fontSize: 20),
                                                       ),
                              SizedBox(width: 20,),
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
