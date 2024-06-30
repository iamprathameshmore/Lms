import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotiList extends StatefulWidget {
  const NotiList({super.key});

  @override
  State<NotiList> createState() => _NotiListState();
}

class _NotiListState extends State<NotiList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'My Notification',
                  style: GoogleFonts.workSans(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Amet magna elit adipisicing pariatur ipsum exercitation dolor. Ad eiusmod anim qui labore duis Lorem eu cillum ex. Occaecat ut ullamco ea veniam excepteur anim fugiat quis.',
                  style: GoogleFonts.workSans(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Icon(
                        Icons.date_range_rounded,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '16 Feb - 9.00am',
                      style: GoogleFonts.workSans(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider()
              ],
            ),
          ),
        );
      },
    );
  }
}
