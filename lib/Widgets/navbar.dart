import 'package:flutter/material.dart';
import 'package:worksaga_freelancer/Screens/bookings/booking.dart';
import 'package:worksaga_freelancer/Screens/homepage.dart';
import 'package:worksaga_freelancer/Screens/profile/profile.dart';
import '../Screens/settings/settings.dart';

class Navbar extends StatefulWidget {
  @override
  NavbarState createState() => NavbarState();
}

class NavbarState extends State<Navbar> {

  Color primarycolor = Color(0xff182a42);
  Color secondarycolor = Color.fromARGB(255, 184, 213, 235);

  int _selectedItemIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Bookings(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Row(
          children: <Widget>[
            buildNavBarItem(Icons.home, 0),
            buildNavBarItem(Icons.calendar_month, 1),
            buildNavBarItem(Icons.person, 2)
          ],
        ),
        body: _children[_selectedItemIndex]);
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 3,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 3, color: primarycolor),
                ),
                gradient: LinearGradient(colors: [
                  secondarycolor.withOpacity(0.3),
                  secondarycolor.withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                color:
                    index == _selectedItemIndex ? primarycolor : Colors.white,
              )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? primarycolor
              : Colors.grey,
        ),
      ),
    );
  }
}
