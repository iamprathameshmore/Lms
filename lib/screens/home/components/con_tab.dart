import 'package:flutter/material.dart';
import 'package:mkcl/screens/home/components/tiles.dart';

class Con_Tabs extends StatefulWidget {
  const Con_Tabs({super.key});

  @override
  State<Con_Tabs> createState() => _Con_TabsState();
}

class _Con_TabsState extends State<Con_Tabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // Specifies number of Tabs here
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                // color: Colors.grey,
                child: TabBar(
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
                  dividerHeight: 0,
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

              Divider(),
              Expanded(
                child: Container(
                  color: Colors.grey.shade100,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Tiles_blue(),
                      Tiles_blue(),
                      Tiles_blue(),
                      Tiles_blue(),
                      Tiles_blue(),
                      Tiles_blue(),
                      Tiles_blue(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
