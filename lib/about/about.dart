import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'About us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Markdown(
        data: '''

## MKCL Attendance Application

MKCL Attendance is a robust and user-friendly application developed to streamline the process of managing attendance. It is designed with the primary goal of simplifying attendance tracking for educational institutions, corporate environments, and other organizations.

### Developed by Prathamesh More

This application was developed by Prathamesh More during his Flutter internship. Prathamesh, a dedicated and talented developer, has meticulously crafted MKCL Attendance to ensure it meets the needs of users with efficiency and reliability.

### Key Features

- **Easy Attendance Management:** Simplifies the process of marking and tracking attendance.
- **User-Friendly Interface:** Intuitive design ensures ease of use for all users.
- **Real-Time Data:** Provides real-time updates and insights into attendance records.
- **Secure and Reliable:** Ensures data security and reliability.
- **Cross-Platform:** Built using Flutter, it works seamlessly on both iOS and Android devices.

### Technology Stack

MKCL Attendance is built using the latest technologies to provide a smooth and efficient user experience:

- **Frontend:** Flutter
- **Backend:** Integrated with secure and scalable backend services
- **Database:** Reliable data storage solutions

### Our Vision

Our vision is to leverage technology to simplify and enhance the management of attendance. We believe in creating solutions that are not only effective but also accessible to all users.

### Contact Us

For more information or inquiries, please contact us at [email@example.com](mailto:email@example.com).
''',
      ),
    );
  }
}
