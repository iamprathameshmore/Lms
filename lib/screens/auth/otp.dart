import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkcl/screens/auth/personal_detailes.dart';
import 'package:mkcl/themes/light_and_dark.dart';
import 'package:mkcl/themes/theme_provoider.dart';
import 'package:provider/provider.dart';

class Otp_screen extends StatefulWidget {
  const Otp_screen({super.key});

  @override
  State<Otp_screen> createState() => _Otp_screenState();
}

class _Otp_screenState extends State<Otp_screen> {
  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.grey,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Verification",
              style: GoogleFonts.workSans(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              textAlign: TextAlign.center,
              'You will get OTP via Mail.',
              style: GoogleFonts.workSans(
                  // fontSize: 15,
                  // fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            OtpTextField(
              filled: true,
              fillColor: Theme.of(context).colorScheme.secondaryContainer,
              borderColor: Theme.of(context).colorScheme.secondary,
              cursorColor: Theme.of(context).colorScheme.secondary,
              enabled: true,
              enabledBorderColor: Theme.of(context).colorScheme.primary,
              focusedBorderColor: Theme.of(context).colorScheme.secondary,
              textStyle: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            SizedBox(
              height: 25,
            ),
            Text.rich(TextSpan(
                text: "Did't recive the verification OTP?",
                style: GoogleFonts.workSans(color: Colors.grey),
                children: [
                  TextSpan(
                      text: ' Resend again',
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () => showDialog(builder: (context) => Dialog(),),
                      // Navigator.pop(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => Dialog(
                      //                 child: Container(
                      //                   height: 100,
                      //                   width: 100,
                      //                   color: Colors.green,
                      //                 ),
                      //               )),
                      //     ),
                      style: GoogleFonts.workSans(
                          color: Colors.blue, fontWeight: FontWeight.w500))
                ]))
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
                  builder: (BuildContext context) => const PersonalDetailes()),
              ModalRoute.withName('/'),
            );
          },
          child: Container(
            height: 30,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              'Verify',
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
