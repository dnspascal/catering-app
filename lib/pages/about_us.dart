import 'package:flutter/material.dart';
import '../customizable_widgets/MyAppBar.dart';
import '../customizable_widgets/MyDrawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85), child: MyAppBar()),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 250,
                      height: 350,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(64.0, 55.0, 0.0, 0.0),
                      child: Container(
                        height: 200.0,
                        width: 320.0,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            image: DecorationImage(
                                image: AssetImage('img/fast.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80.0, 194.0, 0.0, 0.0),
                      child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 50.0,
                          width: 230,
                          decoration: BoxDecoration(
                              color: Colors.yellow[900],
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(30.0))),
                          child: const Column(
                            children: [
                              Text('Villa Company',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Catering Services',
                                  style: TextStyle(
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  "About Villa Catering",
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
                  "We are Food Company Working since 2003",
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: const Text(
                      "We have built our catering business on trust by listening carefully to"
                      "needs and feedback from our customers. Our goal is to let you enjoy your party."
                      "We aim to always exceed your expectations as far as taste, presentstion and service ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: const Text(
                      " Avon Prime meat have an outstanding team of professional chefs"
                      "that make every dish from sratch. We use only finest and freshest ingredients"
                      "to give you a truly elevated dining experience in the comfort of your own home or office"
                      " We have established ourselves as the farmington valley's  Butcher , Grocer and Caterer",
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
              ],            ),
          ),
        ));
  }
}
