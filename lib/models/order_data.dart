import 'package:flutter/material.dart';

class CapturedData {
  Map<String, String>? data1;
  Map<String, String>? data2;
  Map<String, String>? data3;
  Map<String, String>? data4;

  CapturedData({this.data1, this.data2, this.data3, this.data4});
}

class DataCaptureWidget extends StatefulWidget {
   DataCaptureWidget({super.key});
 
  @override
  State<DataCaptureWidget> createState() => _DataCaptureWidgetState();

  // void onSubmit(String s) {print(s);}
}

class _DataCaptureWidgetState extends State<DataCaptureWidget> {
  CapturedData capturedData =  CapturedData();
 
  
   void onSubmit(){
    print("entered onsubmit function");
    var data = {"me":"jonas"};
    var page= 'frank';
    switch(page){
      case 'page1':setState(() {
        capturedData.data1 = data;
        print(data);
      });
      break;
      case 'page2':setState(() {
        capturedData.data2 = data;
      });
      break;
      case 'page3':setState(() {
        capturedData.data3 = data;
      });
      break;
      case 'page4':setState(() {
        capturedData.data4 = data;
      });
      break;

    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// class Frank extends DataCaptureWidget{
//   late DataCaptureWidget myObj ;
// super.onSubmit("page",{});
// }