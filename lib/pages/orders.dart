import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/userController.dart';
import '../customizable_widgets/MyAppBar.dart';
import '../customizable_widgets/MyDrawer.dart';
import 'package:http/http.dart' as http;

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final UserController userController = Get.find();
  @override
  void initState()  {
    super.initState();
   fetchData();
  }
  void fetchData()async{
 var url = Uri.parse("http://192.168.43.202/get_order.php");

    var res2 = await http
        .post(url, body: {"user_id": userController.userData.value['id']});
       print("THIS IS THE SIZE OF MY ARRARY");
       var data = jsonDecode(res2.body);  
    print(data['status']);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Villa Catering Services",
                      style: TextStyle(fontSize: 19.0)),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child:
                      Text("Dar es Salaam", style: TextStyle(fontSize: 19.0)),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Tel No.:255 6529 645 768",
                      style: TextStyle(fontSize: 19.0)),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Email: villacaters@gmail.com",
                      style: TextStyle(fontSize: 19.0)),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Facebook: facebook.com/villacaters",
                      style: TextStyle(fontSize: 19.0)),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.grey[800],
                ),
                Text("Rcode:"),
                Text("Name:"),
                Text("Contact #:"),
                Text("Address:"),
                Text("Event Date:"),
                Text("Time:"),
                Text("Venue:"),
                Text("Motif:"),
                Text("Occassion:"),
                Text("Type:"),
                Text("No of Pax:"),
                Text("Payable:"),
                Text("Mode of Payment:"),
              ]),
        ));
  }
}
