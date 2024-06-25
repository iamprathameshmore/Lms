import "package:flutter/material.dart";
import "package:flutter/scheduler.dart";

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
          Text(
            "Maharashtra Knowledge \n Corporation Limited",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.deepOrangeAccent),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              

              decoration: InputDecoration(
                
                  hintText: 'Enter Your Mobile no.',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'SIGN IN WITH OTP',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
            child: Container(
              child: Text(
                'Use your institude Mail-id or Phone Number. to sign in on MKCL.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600),
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
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                  textAlign: TextAlign.center,
                  TextSpan(text: 'By signing in you accept our ', children: [
                    TextSpan(
                      text: 'Terms of use ',
                      style: TextStyle(color: Colors.blue),
                      children: [
                        TextSpan(
                            text: 'and ',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Privacy policy.',
                                  style: TextStyle(color: Colors.blue))
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
