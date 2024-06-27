import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkcl/about/about.dart';
import 'package:mkcl/contact/contact.dart';
import 'package:mkcl/home/components/tiles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 80,
              scrolledUnderElevation: 10,
              elevation: 1,

              // leadingWidth: 50,
              leading: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () => {Scaffold.of(context).openDrawer()},
                    child: Container(
                      margin: EdgeInsets.only(left: 8, top: 3, bottom: 1),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ClipOval(
                            child: Image.network(
                              "https://avatars.githubusercontent.com/u/91453437?v=4",
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.cover, //change image fill type
                            ),
                          )),
                    ),
                  );
                },
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      TextSpan(
                          text: 'Mr.',
                          children: [TextSpan(text: 'Prathamesh More')])),
                  Text(
                    'Mkcl, Amravati, 444601',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black87,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 25,
                          ))),
                ),
                // SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 25,
                          ))),
                ),
              ],
              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Creates border
                    color: Colors.black87),
                indicatorSize: TabBarIndicatorSize.tab,
                padding: EdgeInsets.only(left: 9, right: 9, bottom: 10),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                unselectedLabelColor: Colors.grey.shade500,
                indicatorPadding: EdgeInsets.only(left: 0, right: 0),
                // labelPadding: EdgeInsets.symmetric(horizontal: 15),
                labelColor: Colors.white,

                // indicatorPadding: EdgeInsets.only(bottom: 0),
                // indicatorWeight: 50,
                dividerHeight: 2,
                dividerColor: Colors.grey.shade300,
                tabs: [
                  Tab(
                    // icon: Icon(Icons.directions_car),
                    // text: 'sun',
                    // height: 60,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sun",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
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
                          "Mon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '13',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          "Tue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          "Wed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '15',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          "Thu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '16',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          "Fri",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '17',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          "Sat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '18',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    backgroundColor: Colors.black,
                    onPressed: () {},
                    label: Text(
                      'Add New Batch',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ],
              ),
            ),
            body: TabBarView(
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
            drawer: Drawer(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
              ),
              elevation: 1,
              width: 270,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Stack(
                        children: <Widget>[
                          new Container(
                            height: 200,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvI5Q5CaSNL3xsVva-tEr6hUWPYv9yv5OjwA&s"),
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.topCenter),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/91453437?v=4'),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              height: 190,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mr.Prathamesh More',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 13,
                                        color: Colors.grey.shade500,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Mkcl, Amravati, 444605",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                          // color: Colors.white,
                          ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.location_city,
                                color: Colors.blueAccent.shade100,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Batche's",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent.shade100,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              '15',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueAccent.shade100,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.blueAccent.shade100,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Student's",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent.shade100,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              '434',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueAccent.shade100,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          // highlightColor: Colors.blueAccent,

                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent.shade100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          // highlightColor: Colors.blueAccent,

                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent.shade100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          // highlightColor: Colors.blueAccent,

                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'About us',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent.shade100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          // highlightColor: Colors.blueAccent,

                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContactPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Contact us',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent.shade100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 12, bottom: 5),
                        child: Row(
                          children: [
                            Image.network(
                              'https://img.icons8.com/ios-filled/50/linkedin.png',
                              height: 25,
                              width: 25,
                              color: Colors.yellow.shade800,
                            ),
                            SizedBox(width: 7),
                            Image.network(
                              'https://img.icons8.com/glyph-neue/64/github.png',
                              height: 25,
                              width: 25,
                              color: Colors.black,
                            ),
                            SizedBox(width: 7),
                            Icon(
                              Icons.facebook_outlined,
                              color: Colors.blue.shade700,
                              size: 25,
                            ),
                            SizedBox(width: 7),
                            Icon(
                              Icons.discord,
                              color: Colors.blueAccent.shade700,
                              size: 25,
                            ),
                            SizedBox(width: 7),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'iamprathameshmore © 2024 ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
