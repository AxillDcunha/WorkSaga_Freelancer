import 'package:flutter/material.dart';
import 'package:worksaga_freelancer/Screens/profile/profile.dart';
// import './Screens/homepage.dart';
import './Screens/startup_screen/splash.dart';
import './Widgets/userbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Work Saga',
      home: SplashScreen(),
      theme: ThemeData(
       primaryColor: Color(0xff182a42)
      
      ),
    );
  }
}
