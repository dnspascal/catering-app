import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: const [
              Text("Home"),
              Text("menu"),
              Text("schedule event"),
              Text("order now"),
              Text("contact"),
            ],
          ),
        ),
        body: Column(
          children: const [
            Center(
              child: SizedBox(
                width: 220,
                child: Text(
                    "Welcome to villa catering, Where our commitment and excellence and culinary innovation has made us one of the premier caterers serving in dar es alaam area lorem wertyuiop[qwertyuiop[qwertyuiop[qwertyuiop[wertyuiopwertyuiopsdfghjklertyuiopertyuiosdfghjklwertyuiopsdfghjkl;wertyuiowertyuiodfghjklwertyuiodfghjklwertyuiodfghjkl]]]]"),
              ),
            ),
            Center(
              child: Text(""),
            )
          ],
        ));
  }
}
