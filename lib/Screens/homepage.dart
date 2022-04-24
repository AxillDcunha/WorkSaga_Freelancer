import 'package:flutter/material.dart';
import 'package:worksaga_freelancer/Widgets/appbar.dart';
import 'package:worksaga_freelancer/Widgets/homepagewidget.dart';

import 'package:worksaga_freelancer/Widgets/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color PrimaryColor = Color(0xff182a42);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(86.0), child: AppBarWidget()),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Complete your profile?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 69, 184, 204),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: PrimaryColor,
                    ),
                    height: 250,
                    width: double.infinity,
                    // child: ,
                  ),
                ),
                ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navbar()));
                          },
                          child: HomePageWidget());
                    }),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
