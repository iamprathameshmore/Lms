import 'package:flutter/material.dart';
import 'package:mkcl/screens/home/add_batches/add_batches.dart';

import 'package:mkcl/screens/home/components/con_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/home/components/searchbar.dart';
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              surfaceTintColor: Theme.of(context).colorScheme.primary,

              // elevation: 10,

              title: Text(
                'Home',
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w600, height: 1),
              ),

              actions: [
                IconButton(
                  onPressed: () {
                    // method to show the search bar
                    showSearch(
                        context: context,
                        // delegate to customize the search bar
                        delegate: CustomSearchDelegate());
                  },
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddBatches()));
                    },
                    icon: Icon(Icons.add_circle_outline)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
              ],

              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(13), // Creates border
                    color: Theme.of(context).colorScheme.secondary),
                indicatorSize: TabBarIndicatorSize.tab,

                padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),

                tabAlignment: TabAlignment.fill,
                // isScrollable: true,
                unselectedLabelColor: Theme.of(context).colorScheme.secondary,
                labelColor: Theme.of(context).colorScheme.primary,

                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                // indicatorWeight: 50,
                labelPadding: EdgeInsets.symmetric(horizontal: 8),

                dividerHeight: 0,

                dividerColor: Colors.grey.shade500,
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
