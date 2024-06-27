import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          SizedBox(height: 392,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Vector Smart Object 1.png"),
            ],
          ),

          SizedBox(height: 191,),

          Image.asset("assets/images/Frame 3.png",width: 50,),


        ],
      ),
    );
  }
}
