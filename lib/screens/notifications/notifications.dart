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
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          surfaceTintColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            'Notifications',
            style: GoogleFonts.workSans(fontWeight: FontWeight.w600, height: 1),
          ),
          // bottom: TabBar(
          //   tabAlignment: TabAlignment.start,
          //   isScrollable: true,
          //   // indicatorColor: Colors.amber,
          //   indicatorSize: TabBarIndicatorSize.tab,
          //   indicator: BoxDecoration(
          //       borderRadius: BorderRadius.circular(50),
          //       border: Border.all(width: 1), // Creates border
          //       color: Theme.of(context).colorScheme.secondary),
          //   indicatorPadding: EdgeInsets.all(5),
          //   dividerColor: Colors.grey,
          //   dividerHeight: 1,
          //   labelColor: Theme.of(context).colorScheme.primary,
          //   padding: EdgeInsets.only(bottom: 5, left: 5),
          //   tabs: [
          //     Tab(
          //       // text: 'All',
          //       child: Text('All'),
          //     ),
          //     Tab(
          //       child: Text('Studnets'),
          //     ),
          //     Tab(
          //       child: Text('My Self'),
          //     ),
          //   ],
          // )
        ),
        // body: TabBarView(
        //   children: [
        //     NotiList(),
        //     NotiList(),
        //     NotiList(),
        //   ],
        // ),
        body: NotiList(),
      ),
    );
  }
}
