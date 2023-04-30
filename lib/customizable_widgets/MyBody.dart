import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 710,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/fast.jpg'), fit: BoxFit.cover)),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Container(
                  width: 340,
                  height: 180,
                  padding: const EdgeInsets.all(14),
                  color: Colors.black.withOpacity(0.8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Welcome To VILLA Catering, Where Our Commitment To Excellence And Culinary Innovation Has Made Us One Of The Premier Caterers Serving Dar Es Salaam Area. VILLA Catering Is Passionately Devoted To Making Your Event Extraordinary. For More Than Twenty Years, We Have Set Standards For Creating Memorable Culinary Experiences While Establishing Clients For Life  ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(100)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                  side: const BorderSide(color: Colors.blue))),
                        ),
                        child: const Text(
                          'ORDER NOW',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'OUR CATERING SERVICES',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'EVENTS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          'img/sherehe.jpg',
                          scale: .5,
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'GRADUATION',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          'img/gradu.jpg',
                          scale: .5,
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'BIRTHDAY',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          'img/happy.jpg',
                          scale: .5,
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
          ),
          Container(
            color: Colors.black.withOpacity(0.9),
            padding: const EdgeInsets.all(12),
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Useful links',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      'Our Team',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    Text('Our Gallery',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        )),
                    Text(
                      'FAQ\'s',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'Our Policy',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'Selection Process',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'Sponsporship',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Image.asset(
                    'img/icn2.png',
                    scale: 0.8,
                    height: 20,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 100,
                    width: 230,
                    child: Text(
                      'Welcome To VILLA Catering, Where Our Commitment To Excellence And Culinary Innovation Has Made Us One Of The Premier Caterers Serving Dar Es Salaam Area.  ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "Subscribe",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                      height: 40.0,
                      width: 230.0,
                      child: Text(
                          "Don't miss to subscribe to our new feeds, kindly fill the form below")),
                  const Text(
                    "Follow Us",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.telegram,
                        color: Color.fromARGB(255, 2, 44, 65),
                      ),
                      Icon(Icons.tiktok_outlined),
                    ],
                  )
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
