import 'package:catering_app/pages/menu_page.dart';
import 'package:catering_app/pages/order_page.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              'famous for good food',
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              'OUR MENU',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
          FittedBox(
            // scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 1500},
                    {"food": "Ndizi", 'price': 1000},
                    {"food": "Chipsi", 'price': 2000},
                    {"food": "Tambi", 'price': 3000},
                  ],
                  photo: "changu-fried.jpg",
                  foodItems: "Wali",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "Kisinia", 'price': 5000},
                    {"food": "Biriani", 'price': 7000},
                  ],
                  photo: "pilau.jpg",
                  foodItems: "Pilau",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "Kuku", 'price': 8000},
                    {"food": "Chapati", 'price': 500},
                    {"food": "Vitumbua", 'price': 500},
                    {"food": "Samosas", 'price': 1000},
                    {"food": "Supu", 'price': 400},
                  ],
                  photo: "fries.jpeg",
                  foodItems: "Chipsi",
                ),
              ],
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "ndizi.JPG",
                  foodItems: "Ndizi",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "tambi_za_nyama.jpg",
                  foodItems: "Macaroni",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "nyama.jpg",
                  foodItems: "Nyama Choma",
                ),
              ],
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "ndizi.JPG",
                  foodItems: "Ndizi",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "tambi_za_nyama.jpg",
                  foodItems: "Macaroni",
                ),
                MenuItem(
                  foodMenu: const [
                    {"food": "nyama", 'price': 11},
                  ],
                  photo: "nyama.jpg",
                  foodItems: "Nyama Choma",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String photo;
  final String foodItems;
  int total = 0;
  List<Map<String, dynamic>> foodMenu;
  MenuItem(
      {required this.photo, required this.foodItems, required this.foodMenu});

  @override
  Widget build(BuildContext context) {
    dynamic sum = addValues();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 0),
      child: Card(
        child: SizedBox(
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                
               children: [
                Image.asset(
                  'img/' + photo,
                  width: 180,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                for (final map in foodMenu) buildFoodMenu(map),
              ]),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 80,),
                  Text(sum.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: ElevatedButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>  OrderPage()));},
                        child: Text(
                          'Order Now',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange[900]),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFoodMenu(Map<String, dynamic> menu) {
    
    return Container(
      width: 180,
      padding: EdgeInsets.symmetric(horizontal:8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            menu['food'],
            style: TextStyle(fontSize: 21),
          ),

          Text(
            menu['price'].toString(),
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }

  int addValues() {
    dynamic total2 = 0;
    for (var item in foodMenu) {
      total2 += item["price"];
    }

    return total2;
  }
}
