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
  void initState() {
    super.initState();
    fetchData();
  }

  Map<String, dynamic> dataReceived = {};

  bool order = false;
  void fetchData() async {
    var url = Uri.parse("http://192.168.43.202/get_order.php");

    var res = await http
        .post(url, body: {"user_id": userController.userData.value['id']});

    var dataAfterDecoded = jsonDecode(res.body);

    for (int i = 0; i < dataAfterDecoded['sizeOfRespo']; i++) {
      print("HERE");
    }
    if (dataAfterDecoded['data'].length > 0) {
      order = true;
      setState(() {
        dataReceived =
            dataAfterDecoded['data'][dataAfterDecoded['data'].length - 1];
      });
    } else {}
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
                order
                    ? RichText(
                        text: TextSpan(children: [
                        WidgetSpan(
                            child: Text("Name:" +
                                userController.userData['first'].toLowerCase() +
                                "\n")),
                        WidgetSpan(
                          child: Text("Contact #:" +
                              userController.userData['contact'] +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Address:" +
                              userController.userData['address'] +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Event Date:" +
                              dataReceived['r_date'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Time:" +
                              dataReceived['r_time'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Venue:" +
                              dataReceived['r_venue'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Motif:" +
                              dataReceived['r_motif'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Occassion:" +
                              dataReceived['r_ocassion'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Type:" +
                              dataReceived['r_type'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("No of Pax:" +
                              dataReceived['pax'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                          child: Text("Payable:" +
                              dataReceived['payable'].toString() +
                              "\n"),
                        ),
                        WidgetSpan(
                            child: Text("Mode of Payment:" +
                                dataReceived['modeofpayment'].toString() +
                                "\n")),
                      ]))
                    : const Text("YOU HAVE NOT ORDERED YET"),

                // Text("Rcode:" + dataReceived['r_code']),
              ]),
        ));
  }
}
