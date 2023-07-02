import "package:flutter/material.dart";
import 'package:catering_app/customizable_widgets/MyAppBar.dart';
import 'package:catering_app/customizable_widgets/MyDrawer.dart';

import '../customizable_widgets/MyMenu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(85), child: MyAppBar()),
      drawer:  MyDrawer(),
      body: MyMenu());
  }
}
