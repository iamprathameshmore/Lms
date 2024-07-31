import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/students/components/std_list.dart';

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Students',
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            height: 1,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_add_alt_1_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: Container(
          //     height: 40,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         color: Theme.of(context).colorScheme.secondaryContainer,
          //         borderRadius: BorderRadius.circular(15),
          //         border: Border.all(
          //           width: 1,
          //           color: Theme.of(context).colorScheme.primary,
          //         )),
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         const Padding(
          //           padding: EdgeInsets.only(left: 10),
          //           child: Icon(
          //             Icons.search,
          //             color: Colors.grey,
          //           ),
          //         ),
          //         const SizedBox(
          //           width: 10,
          //         ),
          //         Text(
          //           'Serach',
          //           style: GoogleFonts.workSans(
          //               color: Colors.grey,
          //               fontSize: 15,
          //               fontWeight: FontWeight.w400),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       TextButton(
          //           onPressed: () {},
          //           child: Text(
          //             'Recent',
          //             style: GoogleFonts.workSans(
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.w500,
          //                 fontSize: 15),
          //           )),
          //       IconButton(
          //           onPressed: () {},
          //           icon: Icon(
          //             Icons.filter_list,
          //           )),
          //     ],
          //   ),
          // ),
          // Divider(
          //   height: 1,
          //   color: Colors.grey,
          // ),
          Expanded(
            child: Std_list(),
          ),
        ],
      ),
    );
  }
}
