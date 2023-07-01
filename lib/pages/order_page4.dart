import 'package:catering_app/pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

enum Packages { p1, p2, p3 }

Packages? _selectedOption = Packages.p1;

class OrderPage4 extends StatefulWidget {
  Map<String, dynamic> page4;
  OrderPage4({super.key, required this.page4});

  @override
  State<OrderPage4> createState() => _OrderPage4State();
}

class _OrderPage4State extends State<OrderPage4> {
  void handleFunction(Packages? value) {
    setState(() {
      _selectedOption = value;
    });
  }
  void submitReservation()async{
    print("inside submit reservation");
    print(widget.page4);
    var url = Uri.parse ("http://192.168.43.202/make_order.php");
    var res = await http.post(url,body:widget.page4);
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
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
                            packageName: const {
                              "package": "Package 1-P1500.00",
                              "id": 1
                            },
                            foodItem: const [
                              "Ndizi",
                              "Chips Kavu",
                              "Nyama Rosti",
                              "Tambi"
                            ],
                            selectedGroup: _selectedOption,
                            handleFunction: handleFunction,
                            packageItem: Packages.p1,
                          ),
                          PackageMeal(
                            packageName: const {
                              "package": "Package 2-P2500.00",
                              "id": 2

                            },
                            foodItem: const [
                              "Tambi",
                              "soda",
                              "Nyama Mbuzi",
                              "Kachumbari"
                            ],
                            selectedGroup: _selectedOption,
                            handleFunction: handleFunction,
                            packageItem: Packages.p2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FittedBox(
                      child: Row(children: [
                        PackageMeal(
                          packageName: const {
                            "package": "Package 3-P2300.00",
                            "id": 3
                          },
                          foodItem: const [
                            "ndizi",
                            "nyama mbuzi",
                            "kachumbari"
                          ],
                          handleFunction: handleFunction,
                          selectedGroup: _selectedOption,
                          packageItem: Packages.p3,
                        ),
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
                            if(_selectedOption == Packages.p1){

                            widget.page4.addAll({
                              "combo_id":'1'
                            });
                            }else if(_selectedOption == Packages.p2){
                                  widget.page4.addAll({
                              "combo_id":'2'
                            });
                            }else if(_selectedOption == Packages.p3){
                                  widget.page4.addAll({
                              "combo_id":'3'
                            });
                            }
                            submitReservation();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Payment()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green[700]),
                              fixedSize: MaterialStateProperty.all(
                                  const Size.fromWidth(90))),
                          child: const FittedBox(
                            child: Text(
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
        ));
  }
}

class PackageMeal extends StatelessWidget {
  final Map<String, dynamic> packageName;
  final List<String> foodItem;
  final Packages packageItem;
  final Packages? selectedGroup;
  final void Function(Packages? pckg) handleFunction;

  PackageMeal({
    super.key,
    required this.foodItem,
    required this.packageName,
    required this.packageItem,
    required this.selectedGroup,
    required this.handleFunction,
  });

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
          Radio(
              onChanged: handleFunction,
              groupValue: selectedGroup,
              value: packageItem)
        ],
      ),
    );
  }
}
