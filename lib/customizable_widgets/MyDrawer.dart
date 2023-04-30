import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black.withOpacity(0.4),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                color: Colors.black.withOpacity(0.5),
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
                      "CATERING SERVICES",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
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
                            fontSize: 22, color: Colors.white.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
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
                            fontSize: 22, color: Colors.white.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 50,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Container(
                      margin:const EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Text(
                        "Schedule Of Events",
                        style: TextStyle(
                            fontSize: 22, color: Colors.white.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
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
                            fontSize: 22, color: Colors.white.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
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
                            fontSize: 22, color: Colors.white.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
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
            ],
          ),
        ));
  }
}
