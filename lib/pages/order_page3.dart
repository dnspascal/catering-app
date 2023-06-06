import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page4.dart';


import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';



class OrderPage3 extends StatelessWidget {
  const OrderPage3({super.key});

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
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                "Place Your Order",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text("Delicious meals are just a few clicks away",style:TextStyle(fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                 LinearProgressIndicator(
                  value: 75 / 100,
                  minHeight: 20,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                ),
               
               const Padding(
                  padding: EdgeInsets.fromLTRB(120,4,0,0),
                  child: Text(
                    '75%',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
            const Padding(
               padding:  EdgeInsets.all(12.0),
               child: Text(
                "More Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                         ),
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                
                  const Text('Other description',style:TextStyle(fontWeight: FontWeight.w600)),
                  TextFormField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Add More Description",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Type',style: TextStyle(fontWeight: FontWeight.w600),),
                        
                         
                           SizedBox(
                            height: 30.0,
                            
                             child: ListTile(
                                                   title: Text('Buffet'),
                                                   horizontalTitleGap: 0,
                                                   contentPadding: EdgeInsets.all(0),
                                                   leading: Radio(value: "buffet",groupValue: "type",onChanged: (value) {
                              setState(() {
                                
                              });
                                                   },),
                                                 ),
                           ),
                      
                         SizedBox(
                          height: 30,
                           child: ListTile(
                            title: Text('Plated'),
                            horizontalTitleGap: 0,
                            contentPadding: EdgeInsets.all(0),
                            leading: Radio(value: "buffet",groupValue: "type",onChanged: (value) {
                              setState(() {
                                
                              });
                            },),
                                                 ),
                         )
                      ],
                    ),
                  )
                ],
              )),
            ),
         
    
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
                              child: const FittedBox(
                                child:  Text(
                                  "Previous",
                                  style: TextStyle(fontSize: 20.00),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                    ElevatedButton(
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> const OrderPage4())
                              );},
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
