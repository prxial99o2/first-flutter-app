import 'package:flutter/material.dart';
import 'package:sampleproject/employee.dart';
import 'package:sampleproject/about.dart';

class DashboardTwo extends StatefulWidget {
  @override
  _DashboardTwoState createState() => _DashboardTwoState();
}

class _DashboardTwoState extends State<DashboardTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            ///Container for Content
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, User1 !",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey[300]),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        ///Text
                        Text(
                          "DASHBOARD",
                          style: TextStyle(
                            fontSize: 40,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: new Image.asset('assets/employee.jpg'),
                      alignment: Alignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Employee List',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Text('Details'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.purple),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(_createRoute());
                          },
                        ),
                      ],
                    ),
                    //SizedBox(
                    //height: 4,
                    //),
                    Container(
                      color: Colors.grey[200],
                      child: new Image.asset('assets/about.jpg'),
                      alignment: Alignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About this app',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Text('Click'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.purple),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(_createSecondRoute());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => EmployeeList(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _createSecondRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AboutApp(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
