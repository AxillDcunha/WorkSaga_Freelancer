// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:worksaga_freelancer/Screens/bookings/upcomingbookings.dart';

import 'package:buttons_tabbar/buttons_tabbar.dart';

import '../../Widgets/appbar.dart';

class Bookings extends StatefulWidget {
  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  Color primarycolor = Color(0xff182a42);
  Color secondarycolor = Color.fromARGB(255, 184, 213, 235);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(86.0), child: AppBarWidget()),
        body: SafeArea(
          child: Container(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), 
                        color: secondarycolor 
                        ),
                    width: 350,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonsTabBar(
                          backgroundColor: primarycolor,
                          unselectedBackgroundColor: secondarycolor,
                          labelStyle: TextStyle(
                              color: Colors.white, fontSize: 12),
                          unselectedLabelStyle: TextStyle(
                              color: primarycolor,
                              fontWeight: FontWeight.bold),
                          unselectedBorderColor: primarycolor,
                          radius: 50,
                          tabs: [
                            Tab(text: "   Pending request  "),
                            Tab(text: "  Upcoming Orders  "),
                            Tab(text: "    Past Orders     "),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        Center(
                          child: SingleChildScrollView(child: UpcomingBookings()),
                        ),
                        Center(
                          child: SingleChildScrollView(child: UpcomingBookings()),
                        ),
                        Center(
                          child: SingleChildScrollView(child: UpcomingBookings()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
