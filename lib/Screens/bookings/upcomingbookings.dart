import 'package:flutter/material.dart';

import '../../Widgets/homepagewidget.dart';

class UpcomingBookings extends StatefulWidget {

  @override
  State<UpcomingBookings> createState() => _UpcomingBookingsState();
}

class _UpcomingBookingsState extends State<UpcomingBookings> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                          
                          child: HomePageWidget());
                    });
  }
}