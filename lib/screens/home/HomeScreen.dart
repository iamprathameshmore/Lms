import 'package:flutter/material.dart';

import 'package:mkcl/screens/home/components/con_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/home/components/tiles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  final now = DateTime.now();
  final berlinWallFell = DateTime.utc(1989, 11, 9);
// final moonLanding = DateTime.parse('1969-07-20 20:18:04Z');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,

              // elevation: 10,

              title: Text(
                'Home',
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w600, height: 1),
              ),

              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
              ],

              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(13), // Creates border
                    color: Colors.black),
                indicatorSize: TabBarIndicatorSize.tab,

                padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                // tabAlignment: TabAlignment.start,
                // isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,

                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                // indicatorWeight: 50,
                labelPadding: EdgeInsets.symmetric(horizontal: 8),
                dividerHeight: 1,

                dividerColor: Colors.grey.shade300,
                tabs: [
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sun',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '12',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Mon',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '13',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Tue',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '14',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'wed',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '15',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Thu',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '17',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Fri',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '18',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    height: 80,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sat',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '19',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // bottomSheet: Text('hello'),
            body: TabBarView(children: [
              Tiles_blue(),
              Tiles_blue(),
              Tiles_blue(),
              Tiles_blue(),
              Tiles_blue(),
              Tiles_blue(),
              Tiles_blue(),
            ]),
          ),
        ),
      ),
    );
  }
}
