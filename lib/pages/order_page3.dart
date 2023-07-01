import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page4.dart';

import 'package:flutter/material.dart';

import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

enum RadioOptions { buffet, plated }

class OrderPage3 extends StatefulWidget {
  Map<String, dynamic> page3 = {};

  OrderPage3({super.key, required this.page3});

  @override
  State<OrderPage3> createState() => _OrderPage3State();
}

class _OrderPage3State extends State<OrderPage3> {
  RadioOptions? _selectedOption = RadioOptions.buffet;
  String chosenValue="buffet";
  void handleFunction(RadioOptions? value) {
    setState(() {
     
      _selectedOption = value;
      if(_selectedOption == RadioOptions.buffet){
        chosenValue = "buffet";
      }else if(_selectedOption == RadioOptions.plated){
        chosenValue = "plated";
      }
    });
  }

  final TextEditingController _description = TextEditingController();

  final TextEditingController _type = TextEditingController();

  final _formkey4 = GlobalKey<FormState>();

  late String description;

  

  @override
  Widget build(BuildContext context) {
    print(widget.page3);
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
                      value: 75 / 100,
                      minHeight: 20,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(120, 4, 0, 0),
                      child: Text(
                        '75%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "More Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key:_formkey4,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Other description',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      TextFormField(
                       onSaved:(value){
                          description = value!;
                       },
                        controller:_description,
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: "Add More Description",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Type',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 30.0,
                              child: ListTile(
                                title: Text('Buffet'),
                                horizontalTitleGap: 0,
                                contentPadding: EdgeInsets.all(0),
                                leading: Radio(
                                  value: RadioOptions.buffet,
                                  groupValue: _selectedOption,
                                  onChanged: handleFunction,
                                  activeColor: Colors.blue[900],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: ListTile(
                                title: Text('Plated'),
                                horizontalTitleGap: 0,
                                contentPadding: EdgeInsets.all(0),
                                leading: Radio(
                                  value: RadioOptions.plated,
                                  groupValue: _selectedOption,
                                  onChanged: handleFunction,
                                  activeColor: Colors.blue[900],
                                ),
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
                          _formkey4.currentState!.save();
                          widget.page3.addAll({
                              "r_motif":_description.text,
                              "r_type":chosenValue,
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>  OrderPage4(page4:widget.page3)));
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
        ));
  }
}
