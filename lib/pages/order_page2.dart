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
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                "Place Your Order",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
          const  Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text("Delicious meals are just a few clicks away",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                 LinearProgressIndicator(
                  value: 50 / 100,
                  minHeight: 20,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                ),
                Row(
                 
                 
                  children: const [
                    SizedBox(
                      width: 65.0,
                      
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,4.0,0,0),
                      child: Text(
                        '50%',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ]),
            ),
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                "Venue Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Venue',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(
                        height: 40,
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Occassion',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding:const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                            hintText: "Select Occassion",
                            suffixIcon: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                            border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
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
                             onPressed: (){Navigator.pop(context);},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.grey[700]),
                                  fixedSize: MaterialStateProperty.all(
                                      const Size.fromWidth(90))),
                              child:const FittedBox(
                                child:  Text(
                                  "Previous",
                                  style: TextStyle(fontSize: 20.00),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
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
