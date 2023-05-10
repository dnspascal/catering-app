import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                 foodMenu:const [{"food":"nyama",'price':1500},{"food":"Ndizi",'price':1000},{"food":"Chipsi",'price':2000},{"food":"Tambi",'price':3000},],
                  photo: "changu-fried.jpg",
                  foodItems: "Wali",
                ),
                MenuItem(
                 foodMenu:const [{"food":"Kisinia",'price':5000},{"food":"Biriani",'price':7000},],
                  photo: "pilau.jpg",
                  foodItems: "Pilau",
                ),
                MenuItem(
                 foodMenu:const [{"food":"Kuku",'price':8000},{"food":"Chapati",'price':500},{"food":"Vitumbua",'price':500},{"food":"Samosas",'price':1000},{"food":"Supu",'price':400},],
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
                 foodMenu:const [{"food":"nyama",'price':11},],
                  photo: "ndizi.JPG",
                  foodItems: "Ndizi",
                ),
                MenuItem(
                 foodMenu:const [{"food":"nyama",'price':11},],
                  photo: "tambi_za_nyama.jpg",
                  foodItems: "Macaroni",
                ),
                MenuItem(
                 foodMenu:const [{"food":"nyama",'price':11},],
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
                 foodMenu:const [{"food":"nyama",'price':11},],
                  photo: "ndizi.JPG",
                  foodItems: "Ndizi",
                ),
                MenuItem(
                  foodMenu:const [{"food":"nyama",'price':11},],
                  photo: "tambi_za_nyama.jpg",
                  foodItems: "Macaroni",
                ),
                MenuItem(
                  foodMenu:const [{"food":"nyama",'price':11},],
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
  List  <Map<String,dynamic>> foodMenu;
  MenuItem({required this.photo, required this.foodItems,required this.foodMenu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(

         
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset(
                'img/' + photo,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
              for(final map in foodMenu) buildFoodMenu(map),
            ]),
              Center(child: ElevatedButton(onPressed: (){}, child: Text('Order Now',style: TextStyle(fontSize: 18),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange[900]),))),
          ],
        ),
      ),
    );
  }
  Widget buildFoodMenu(Map<String,dynamic> menu){
    return Row(
              
     mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(menu['food'],style: TextStyle(fontSize: 21),),
        SizedBox(width: 70,),
        Text(menu['price'].toString(),style: TextStyle(fontSize: 21),),
      ],
    );
  }
}

