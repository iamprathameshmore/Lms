import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/themes/light_and_dark.dart';
import 'package:mkcl/themes/theme_provoider.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Settings',
          style: GoogleFonts.workSans(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'General',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Theme',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          Text(
                            themeProvide.themeDataStyle == ThemeDataStyle.dark
                                ? 'Dark'
                                : 'light',
                            style: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          Text(
                            themeProvide.themeDataStyle == ThemeDataStyle.dark
                                ? 'English'
                                : 'System',
                            style: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notifications',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          Text(
                            themeProvide.themeDataStyle == ThemeDataStyle.dark
                                ? 'On'
                                : 'Off',
                            style: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'More Options',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Share Feedback',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of Service',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy Policy & Analytics',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // themeProvide.changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign Out',
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Mkcl Mobile v0.0.1',
                      style: GoogleFonts.workSans(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
