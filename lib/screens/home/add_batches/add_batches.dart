import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/home/batches/attendance/attendance.dart';

const List<String> list = <String>['Female', 'Male', 'Trans'];

class AddBatches extends StatefulWidget {
  const AddBatches({super.key});

  @override
  State<AddBatches> createState() => _AddBatchesState();
}

class _AddBatchesState extends State<AddBatches> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "Add Your Batch",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Text(
                      'Title',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Prathamesh More',
                      hintStyle: GoogleFonts.workSans(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: Text(
                          'Start Time',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.timer,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            hintText: '9.00am',
                            hintStyle: GoogleFonts.workSans(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w400),

                            fillColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            // focusColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'TO',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: Text(
                          'End Time',
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.timer,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            hintText: '10.00am',
                            hintStyle: GoogleFonts.workSans(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w400),

                            fillColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            // focusColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(right: 15),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 5, vertical: 8),
                //         child: Text(
                //           'Gender',
                //           style:
                //               GoogleFonts.workSans(fontWeight: FontWeight.w500),
                //         ),
                //       ),
                //       DropdownMenu<String>(
                //         textStyle:
                //             GoogleFonts.workSans(fontWeight: FontWeight.w500),
                //         menuStyle: MenuStyle(

                //             // elevation: WidgetStatePropertyAll(5),
                //             padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
                //             backgroundColor:
                //                 WidgetStatePropertyAll(Colors.grey.shade200)),
                //         leadingIcon: Icon(Icons.person),
                //         inputDecorationTheme: InputDecorationTheme(
                //           fillColor: Colors.grey.shade300, filled: true,
                //           enabledBorder: OutlineInputBorder(
                //             borderSide: BorderSide(color: Colors.white),
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //           // filled: true,
                //           // focusColor: Colors.grey.shade100,
                //           focusedBorder: OutlineInputBorder(
                //             borderSide: BorderSide(color: Colors.white),
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //         initialSelection: list.first,
                //         onSelected: (String? value) {
                //           // This is called when the user selects an item.
                //           setState(() {
                //             dropdownValue = value!;
                //           });
                //         },
                //         dropdownMenuEntries:
                //             list.map<DropdownMenuEntry<String>>((String value) {
                //           return DropdownMenuEntry<String>(
                //               value: value, label: value);
                //         }).toList(),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Text(
                      'Phone No',
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+91 888888888',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Text(
                      'Email',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'iamprathameshmore07@gmail.com',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Text(
                      'Batch Code',
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.group,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintText: '12345678',
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: TextButton(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ))),
              backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.secondary)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Attendance()),
            );
          },
          child: Container(
            height: 30,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              'Next',
              style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
