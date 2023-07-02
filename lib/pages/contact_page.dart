import 'package:flutter/material.dart';
import '../customizable_widgets/MyAppBar.dart';
import '../customizable_widgets/MyDrawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                Text(
                  "Our Future Goal",
                  style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  "We want to lead Catering Service in Tanzania",
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      "Many of our meats are traceable to the farm of origin. We offer all cuts and are always glad to carry out instructions for special cuts. We carry our signature bone in pork chops that have amazing marbling and flavour! Our chicken is All Natural, hormone and antibiotics free. We also work with local farms offering local, grass fed and all natural meats as well. ",
                     
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      "Our exotic meat section is quite popular. In there you can find Bison, Ostrich, Venison, Rabbit, Elk, Cornish Hens, Alligator, Llama, you name it. We either have it or can get it for you. We proudly make our own sausage in house."
                  ,
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      "Here we are trying to give you all kinds of technical content, whether it is related to designing or functionality. We are creating content on a lot of languages and will continue to make it free of cost even if you use it without any problem. Which is a very important thing."
                  ,
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      "Many of our meats are traceable to the farm of origin. We offer all cuts and are always glad to carry out instructions for special cuts. We also work with local farms offering local, grass fed and all natural meats as well."
                  ,
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      "In the end, I would say keep visiting our  website and enjoy the quality food. "
                  ,
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
              ],            ),
          ),
        ));
  }
}
