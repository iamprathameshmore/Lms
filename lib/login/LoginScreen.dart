import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:mkcl/home/HomeScreen.dart";
import "package:mkcl/terms%20and%20policys/policys.dart";
import "package:mkcl/terms%20and%20policys/terms.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/mkcl.png',
            height: 150,
            width: 150,
            colorBlendMode: BlendMode.overlay,
          ),
          const Text(
            "Maharashtra Knowledge \n Corporation Limited",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black87),
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
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Material(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                // hoverColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'SIGN IN WITH OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
            child: Container(
              child: Text(
                'Use your Institude Mail to Sign in on MKCL Attendance App.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
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
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  highlightColor: Colors.blue,
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        // color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text.rich(
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                  textAlign: TextAlign.center,
                  TextSpan(text: 'By signing in you accept our ', children: [
                    TextSpan(
                      text: 'Terms of use',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context)
                            .pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                                (Route<dynamic> route) => false),
                      style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue),
                      children: [
                        TextSpan(
                            text: ' and ',
                            style: TextStyle(
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
                                  style: TextStyle(
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
                child: const Text(
                  'Trouble signing in?',
                  style: TextStyle(color: Colors.blue),
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
