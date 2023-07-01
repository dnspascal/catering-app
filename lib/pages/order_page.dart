import 'package:catering_app/models/order_data.dart';
import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/order_page2.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

class OrderPage extends StatelessWidget {
  Map<String, dynamic> page1 = {};

  final DataCaptureWidget dataCaptured = DataCaptureWidget();
  OrderPage({
    super.key,
  });
  final TextEditingController _noOfPax = TextEditingController();

  final TextEditingController _dateOfEvent = TextEditingController();

  final TextEditingController _timeOfEvent = TextEditingController();

  final _formkey1 = GlobalKey<FormState>();

  late String noOfPax;

  late String dateOfEvent;

  late String timeOfEvent;

  @override
  Widget build(BuildContext context) {
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
                Padding(
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
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 32.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            '25%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                    key: _formkey1,
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "pax field can not be empty";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    noOfPax = value!;
                                  },
                                  controller: _noOfPax,
                                  cursorColor: Colors.grey,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    hintText: "No of Pax",
                                    suffixIcon: FittedBox(
                                      child: Column(
                                        children: [
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
                              const Text(
                                'Date of Event',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                                child: SizedBox(
                                  height: 40.0,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "date field can not be empty";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      dateOfEvent = value!;
                                    },
                                    controller: _dateOfEvent,
                                    cursorColor: Colors.grey,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Time of event can not be empty";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    timeOfEvent = value!;
                                  },
                                  controller: _timeOfEvent,
                                  cursorColor: Colors.grey,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
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
                      if (_formkey1.currentState!.validate()) {
                        _formkey1.currentState!.save();
                        page1.addAll({
                          "pax":_noOfPax.text,
                          "r_date":_dateOfEvent.text,
                          "r_time":_timeOfEvent.text,
                        });
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => OrderPage2(page2: page1)));
                      }
                      //  dataCaptured.onSubmit("denis");
                    
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
                  child: const FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
