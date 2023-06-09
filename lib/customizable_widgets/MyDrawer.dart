import 'package:catering_app/pages/about_us.dart';
import 'package:catering_app/pages/contact_page.dart';
import 'package:catering_app/pages/home_page.dart';
import 'package:catering_app/pages/menu_page.dart';

import 'package:flutter/material.dart';
import 'package:catering_app/pages/registration.dart';
import 'package:get/get.dart';

import '../Controllers/userController.dart';
import '../pages/login.dart';
import '../pages/orders.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UserController userController = Get.find();
    
    Widget ChildWidget;
    Widget OrderPage;
    if(userController.active.value){
      ChildWidget =const MenuPage();
      OrderPage=InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Orders()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.receipt_long,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                              child: Text(
                                "Orders",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    );

    }else{
      OrderPage= const SizedBox(height: 0.0, width: 0.0);
      ChildWidget=const Login();
    }
    Widget logoutWidget;
    if (userController.active.value) {
      logoutWidget = InkWell(
        onTap:(){userController.logout();Get.to(const Login());},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(
                Icons.logout,
                size: 50,
                color: Colors.white.withOpacity(0.6),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                child: Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.6)),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      logoutWidget = const SizedBox(height: 0.0, width: 0.0);
    }

    return Drawer(
        backgroundColor: Colors.black.withOpacity(0.8),
        child: SafeArea(
          child: FittedBox(
            child: Column(
              
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  // color: Colors.black.withOpacity(0.6),
                  width: 300,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'img/icn2.png',
                        scale: .55,
                      ),
                      const Text(
                        "VILLA CATERING",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HomePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MenuPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.food_bank_rounded,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                              child: Text(
                                "Menu",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  ChildWidget));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    OrderPage,
                                        InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => AboutUs()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14.0, 0, 0, 0),
                              child: Text(
                                "Contact Us",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => AboutUs()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info,
                              size: 50,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    logoutWidget,
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
