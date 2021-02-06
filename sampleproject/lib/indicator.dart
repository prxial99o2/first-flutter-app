import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  IndicatorWidget({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 10,
          color: Colors.black,
        ),
        SizedBox(
          width: 7,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
