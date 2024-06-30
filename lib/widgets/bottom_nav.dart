import 'package:flutter/material.dart';
import 'package:mkcl/screens/about/about.dart';
import 'package:mkcl/screens/contact/contact.dart';
import 'package:mkcl/screens/home/HomeScreen.dart';
import 'package:mkcl/screens/notifications/notifications.dart';
import 'package:mkcl/screens/profile/profile.dart';
import 'package:mkcl/screens/students/students.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Students(),
    Notifications(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            activeIcon: Icon(Icons.school),
            label: 'Couress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: 'Couress',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    // scale: 10,
                    'https://avatars.githubusercontent.com/u/91453437?v=4'),
              ),
            ),
            backgroundColor: Colors.amber,
            // activeIcon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        clipBehavior: Clip.hardEdge,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
        ),
        elevation: 1,
        width: 270,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
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
                                  fontWeight: FontWeight.bold, fontSize: 20),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
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
                  padding: const EdgeInsets.only(top: 8, left: 12, bottom: 5),
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
    );
  }
}
