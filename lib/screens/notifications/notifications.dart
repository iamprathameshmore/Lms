import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/notifications/components/noti_list.dart';
import 'package:mkcl/screens/students/components/std_list.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            title: Text(
              'Notifications',
              style:
                  GoogleFonts.workSans(fontWeight: FontWeight.w600, height: 1),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.filter_list_outlined)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
              ),
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1), // Creates border
                  color: Colors.black),
              indicatorPadding: EdgeInsets.all(5),
              dividerColor: Colors.grey.shade300,
              labelColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 8),
              tabs: [
                Tab(
                  // text: 'All',
                  child: Text('All'),
                ),
                Tab(
                  child: Text('Studnets'),
                ),
                Tab(
                  child: Text('My Self'),
                ),
              ],
            )),
        body: TabBarView(
          children: [
            NotiList(),
            NotiList(),
            NotiList(),
          ],
        ),
      ),
    );
  }
}
