import 'package:flutter/material.dart';
import 'package:todo/Screens/task_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TasksScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
          children: [
            Image(
                image: AssetImage(
                    "lib/assets/Splash.png",
                ) ,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),

          ],
        ),



    );
  }
}
