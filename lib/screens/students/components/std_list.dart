import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Std_list extends StatefulWidget {
  const Std_list({super.key});

  @override
  State<Std_list> createState() => _Std_listState();
}

class _Std_listState extends State<Std_list> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext, int) {
          return InkWell(
            onDoubleTap: () {},
            onLongPress: () {
              if (kDebugMode) {
                print('long press');
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
              child: Container(
                decoration: BoxDecoration(
                    // color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).colorScheme.secondary),
                          child: CircleAvatar(
                            radius: 28,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Prathamesh More',
                                  style: GoogleFonts.workSans(
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: Text(
                                    '●',
                                    style: GoogleFonts.workSans(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    '(His/Him)',
                                    style: GoogleFonts.workSans(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '21be0711',
                                  style: GoogleFonts.workSans(fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
