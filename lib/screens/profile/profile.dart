import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:mkcl/screens/about/about.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          'Profile',
          style: GoogleFonts.workSans(fontWeight: FontWeight.w600, height: 1),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined))
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/91453437?v=4'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Prathamesh More',
                        style: GoogleFonts.workSans(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'iamprathameshmore',
                        style: GoogleFonts.workSans(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'india',
                    style: GoogleFonts.workSans(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '888888888',
                    style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.mail_outline,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'iamprathameshmore07@gmail.com',
                    style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                        text: '453',
                        style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                            text: ' Students',
                            style: GoogleFonts.workSans(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: 15,
              height: 1,
              endIndent: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  ' About',
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Expanded(
            //   child: Markdown(
            //     selectable: true,
            //     shrinkWrap: true,
            //     softLineBreak: true,
            //     data: '''

            // ## MKCL Attendance Application

            // MKCL Attendance is a robust and user-friendly application developed to streamline the process of managing attendance. It is designed with the primary goal of simplifying attendance tracking for educational institutions, corporate environments, and other organizations.

            // ### Developed by Prathamesh More

            // This application was developed by Prathamesh More during his Flutter internship. Prathamesh, a dedicated and talented developer, has meticulously crafted MKCL Attendance to ensure it meets the needs of users with efficiency and reliability.

            // ### Key Features

            // - **Easy Attendance Management:** Simplifies the process of marking and tracking attendance.
            // - **User-Friendly Interface:** Intuitive design ensures ease of use for all users.
            // - **Real-Time Data:** Provides real-time updates and insights into attendance records.
            // - **Secure and Reliable:** Ensures data security and reliability.
            // - **Cross-Platform:** Built using Flutter, it works seamlessly on both iOS and Android devices.

            // ### Technology Stack

            // MKCL Attendance is built using the latest technologies to provide a smooth and efficient user experience:

            // - **Frontend:** Flutter
            // - **Backend:** Integrated with secure and scalable backend services
            // - **Database:** Reliable data storage solutions

            // ### Our Vision

            // Our vision is to leverage technology to simplify and enhance the management of attendance. We believe in creating solutions that are not only effective but also accessible to all users.

            // ### Contact Us

            // For more information or inquiries, please contact us at [email@example.com](mailto:email@example.com).
            // ''',
            //   ),
            // ),
            Expanded(child: AboutPage())
          ],
        ),
      ),
    );
  }
}
