import "package:flutter/material.dart";
import "../customizable_widgets/MyAppBar.dart";
import "../customizable_widgets/MyDrawer.dart";
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  // CameraPosition _initialPosition = const CameraPosition(target:LatLng(0.0, 0.0));
  // late GoogleMapController _controller;
  // void getCurrentLocation() async {
    //  Position position = await Geolocator.getCurrentPosition(
// desiredAccuracy: LocationAccuracy.high
    //  );
    //  setState(() {
      //  _initialPosition = CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 15,);
    //  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(85), child: MyAppBar()),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown[800],
              height: 350.0,
              // child: GoogleMap(initialCameraPosition: _initialPosition, mapType: MapType.normal, onMapCreated: (GoogleMapController controller){
              // _controller = controller;
              // getCurrentLocation();
              // },
              ),
            
            Form(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(
                      //       height: 18.0,
                      //     ),
                      const Text(
                        "Full name",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please write your name";
                          }
                          return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: "please type your name",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3.0)),
                        ),
                      ),
                      //   const SizedBox(
                      //   height: 18.0,
                      // ),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please write your Email";
                          }
                          return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: " please type your Email",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3.0)),
                        ),
                      ),
                      const Text(
                        "Subject",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please write your Feedback";
                          }
                          return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: " Subject",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3.0)),
                        ),
                      ),
                      const Text(
                        "Comments",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "put your comments here";
                          }
                          return null;
                        },
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Colors.grey,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: "Comments here...",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue[900]),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(350.0))
                                ),
                            child: const Text(
                              "SEND",
                              style: TextStyle(fontSize: 15.0),
                            )),
                      ),
                    ]),
              ),
            )



            
      
          ]

      
        )
      )
        );
  }
}
