import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/home/batches/attendance/attendance.dart';

class Bateches extends StatefulWidget {
  const Bateches({super.key});

  @override
  State<Bateches> createState() => _BatechesState();
}

class _BatechesState extends State<Bateches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Batch 001',
          style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.deepOrange.shade300,
        surfaceTintColor: Colors.deepOrange.shade300,

        // foregroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: Theme.of(context).colorScheme.primary,
              )),
          const SizedBox(
            width: 5,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Theme.of(context).colorScheme.primary,
              )),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            'March Dribble Shot Desgin. Plan for the month',
            style: GoogleFonts.workSans(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                const SizedBox(height: 40, width: 40, child: CircleAvatar()),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assigned to',
                      style: GoogleFonts.workSans(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Text(
                      'Prathamesh More',
                      style: GoogleFonts.workSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )),
                    child: Icon(
                      CupertinoIcons.calendar,
                      color: Theme.of(context).colorScheme.primary,
                    )),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9.00 - 10.00 am',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      '16 Feb',
                      style: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_alt,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    Text(
                      'Students',
                      style: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_add_alt_1,
                          color: Theme.of(context).colorScheme.secondary,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Serach',
                        style: GoogleFonts.workSans(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Expanded(child: Std_list())
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        Expanded(
            child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: ListView.builder(
            itemCount: 101,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '$index.',
                        style: GoogleFonts.workSans(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'abcd$index',
                        style: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ))
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border(
              top: BorderSide(
                width: 1,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: TextButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ))),
                backgroundColor:
                    WidgetStatePropertyAll(Colors.deepOrange.shade300)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Attendance()),
                // ModalRoute.withName('/'),
              );
            },
            child: Container(
              height: 30,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Start Attendance',
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
