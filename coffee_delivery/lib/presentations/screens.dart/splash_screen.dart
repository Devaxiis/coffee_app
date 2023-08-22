import 'package:coffee_delivery/presentations/screens.dart/home_screen.dart';
import 'package:coffee_delivery/services/contants/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
   splashCreator();
  }
  Future<void> splashCreator()async {
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const HomeScreen()), (route) => false));
    
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff8047f8),
      body: Center(
        child: Image(image: AssetImage("assets/images/img_logo.png",),height: 71,width: 154,color: Colors.white,),
      ),
    );
  }
}