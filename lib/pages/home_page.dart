import 'package:catering_app/customizable_widgets/MyBody.dart';
import 'package:flutter/material.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';
import 'package:catering_app/customizable_widgets/MyAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(85), child: MyAppBar()),
      floatingActionButton: SizedBox(
          width: 120.0,
          height: 48.0,
          child: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(30.0)),
            child: const Text('Chat with us'),
          )),
      body: const MyBody(),
    );
  }
}
