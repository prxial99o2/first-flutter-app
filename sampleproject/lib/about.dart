import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/company.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'One-stop application to manage your startup \nby single click, tracking and mentoring.',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Marketing Insights ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'All your marketing growth are tracked under \na single application.',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Advisory through Experts ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'We aims to help local companies accelerate \ndigital transformation to be competitive \ninternationally.',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'FAQ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'How can we help you?',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Contact us',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Feel free to contact us through email.',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
