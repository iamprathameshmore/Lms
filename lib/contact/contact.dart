import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contact us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Markdown(
        data: '''
Thank you for your interest in MKCL Attendance! We are here to help and answer any questions you may have. Please feel free to reach out to us through any of the following channels:

## General Inquiries

For general inquiries about MKCL Attendance, please contact us at:

- **Email:** [contact@mkclattendance.com](mailto:contact@mkclattendance.com)
- **Phone:** +1 (123) 456-7890

## Support

If you need support or have any technical issues, our support team is ready to assist you:

- **Email:** [support@mkclattendance.com](mailto:support@mkclattendance.com)
- **Phone:** +1 (123) 456-7891

## Feedback

We value your feedback and suggestions to improve MKCL Attendance. Please share your thoughts with us:

- **Email:** [feedback@mkclattendance.com](mailto:feedback@mkclattendance.com)

## Social Media

Stay connected with us on social media for the latest updates and news:

- **Twitter:** [@MKCLAttendance](https://twitter.com/MKCLAttendance)
- **Facebook:** [MKCL Attendance](https://facebook.com/MKCLAttendance)
- **LinkedIn:** [MKCL Attendance](https://linkedin.com/company/MKCLAttendance)

## Office Address

Visit us at our office:

MKCL Attendance Team  
1234 Main Street  
City, State, ZIP Code  
Country

---

We look forward to hearing from you!

**MKCL Attendance Team**

''',
      ),
    );
  }
}
