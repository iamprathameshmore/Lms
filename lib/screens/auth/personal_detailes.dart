import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/themes/light_and_dark.dart';
import 'package:mkcl/themes/theme_provoider.dart';
import 'package:mkcl/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

const List<String> list = <String>['Female', 'Male', 'Trans'];

class PersonalDetailes extends StatefulWidget {
  const PersonalDetailes({super.key});

  @override
  State<PersonalDetailes> createState() => _PersonalDetailesState();
}

class _PersonalDetailesState extends State<PersonalDetailes> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Create Your Profile",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                themeProvide.changeTheme();
              },
              icon: themeProvide.themeDataStyle == ThemeDataStyle.dark
                  ? Icon(
                      Icons.sunny,
                      color: Colors.grey,
                    )
                  : Icon(
                      Icons.mode_night,
                      color: Colors.grey,
                    )),
          SizedBox(
            width: 5,
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Help To MKCL Institide to Managed Thier Students Attendance.',
                style: GoogleFonts.workSans(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 130,
              width: 130,
              child: CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.secondaryContainer,
              ),
            ),
            SizedBox(
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
                      'Name',
                      style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    decoration: InputDecoration(
                      hintText: 'Prathamesh More',
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500),
                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: Text(
                          'Date of Birth',
                          style:
                              GoogleFonts.workSans(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: 160,
                        child: TextFormField(
                          cursorColor: Theme.of(context).colorScheme.secondary,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.date_range_rounded),
                            hintText: '01-02-2000',
                            hintStyle: GoogleFonts.workSans(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w500),

                            fillColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            // focusColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: Text(
                          'Gender',
                          style:
                              GoogleFonts.workSans(fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenu<String>(
                        textStyle:
                            GoogleFonts.workSans(fontWeight: FontWeight.w500),
                        menuStyle: MenuStyle(

                            // elevation: WidgetStatePropertyAll(5),
                            padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
                            backgroundColor: WidgetStatePropertyAll(
                                Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer)),
                        leadingIcon: Icon(Icons.person),
                        inputDecorationTheme: InputDecorationTheme(
                          fillColor:
                              Theme.of(context).colorScheme.secondaryContainer,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // filled: true,
                          // focusColor: Colors.grey.shade100,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        initialSelection: list.first,
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        dropdownMenuEntries:
                            list.map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
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
                      style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).colorScheme.secondary,
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
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
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
                      style: GoogleFonts.workSans(fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'iamprathameshmore07@gmail.com',
                      prefixIcon: Icon(Icons.mail),
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
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
                      'Center Code',
                      style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      hintText: '12345678',
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
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
                      'Location',
                      style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).colorScheme.primary,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      hintText: 'Amravati, Maha, 444601',
                      prefixIcon: Icon(Icons.location_on),
                      hintStyle: GoogleFonts.workSans(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400),

                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      // focusColor: Colors.grey.shade100,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
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
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: TextButton(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.primary))),
              backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.secondary)),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const BottomNav()),
              ModalRoute.withName('/'),
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
