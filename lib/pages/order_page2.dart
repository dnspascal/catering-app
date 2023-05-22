import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page.dart';
import 'package:catering_app/pages/order_page3.dart';
import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

import '../customizable_widgets/MyMenu.dart';

class OrderPage2 extends StatelessWidget {
  const OrderPage2({super.key});

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
                value: 50 / 100,
                minHeight: 20,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
              ),
              Align(
               
                  child: Row(
                   
                   
                    children: const [
                      SizedBox(
                        width: 65.0,
                        
                      ),
                      Text(
                        '50%',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ]),
            const Text(
              "Venue Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Form(
                child: Column(
              children: [
                const Text('Venue'),
                SizedBox(
                  height: 30,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.streetAddress,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "Complete Address of venue",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                    ),
                  ),
                ),
                const Text('Ocassion'),
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
                                hintText: "Select Occassion",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_drop_down))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
         
    
              Row(
                children: [
                   ElevatedButton(
                           onPressed: (){Navigator.pop(context);},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey[700]),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(90))),
                            child: FittedBox(
                              child: const Text(
                                "Previous",
                                style: TextStyle(fontSize: 20.00),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                  ElevatedButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> const OrderPage3()));},
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
