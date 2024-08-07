import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:mkcl/screens/auth/otp.dart";
import "package:mkcl/themes/light_and_dark.dart";
import "package:mkcl/themes/theme_provoider.dart";
import "package:mkcl/widgets/bottom_nav.dart";
import "package:mkcl/screens/terms%20and%20policys/policys.dart";
import "package:mkcl/screens/terms%20and%20policys/terms.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.primary,
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/png/mkcl.png',
            height: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Creating a Knowledge Lit World",
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter Your Mail',
                hintStyle: GoogleFonts.workSans(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // prefixIconColor: Colors.amber,
                fillColor: Theme.of(context).colorScheme.secondaryContainer,
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                // focusColor: Colors.grey.shade100,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: TextButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.secondary)),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'SIGN IN WITH OTP',
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Otp_screen()));
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute<void>(
                  //       builder: (BuildContext context) => const Otp_screen()),
                  //   ModalRoute.withName('/'),
                  // );
                },
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
            child: Container(
              child: Text(
                'Use your Institude Mail to Sign in on MKCL Attendance App.',
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
                    color: Colors.grey.shade600, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 160,
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: TextButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.secondaryContainer)),
                  child: Container(
                    // height: ,
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'SIGN IN WITH GOOGLE',
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const BottomNav()),
                      ModalRoute.withName('/'),
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text.rich(
                  style: GoogleFonts.workSans(
                      color: Colors.grey.shade600, fontSize: 15),
                  textAlign: TextAlign.center,
                  TextSpan(text: 'By signing in you accept our ', children: [
                    TextSpan(
                      text: 'Terms of use',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsPage()),
                            ),
                      style: GoogleFonts.workSans(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue),
                      children: [
                        TextSpan(
                            text: ' and ',
                            style: GoogleFonts.workSans(
                                color: Colors.grey.shade600,
                                decoration: TextDecoration.none),
                            children: [
                              TextSpan(
                                  text: 'Privacy policy',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PolicyPage()),
                                        ),
                                  style: GoogleFonts.workSans(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue))
                            ])
                      ],
                    )
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Trouble signing in?',
                  style: GoogleFonts.workSans(color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
