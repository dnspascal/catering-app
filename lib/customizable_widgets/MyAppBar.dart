import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('img/icn2.png',),
          const SizedBox(width: 5,),
          const Text('VILLA Catering'),
        ],
      ),
      centerTitle: true,
      titleSpacing: 30,
      toolbarHeight:85,
      backgroundColor: Colors.black.withOpacity(0.9),
      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(onPressed: (){}, icon:const Icon(Icons.person_2_outlined,color: Colors.white,size: 40,)),
      )],
    );
  }
}

