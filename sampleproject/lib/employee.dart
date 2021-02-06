import 'package:flutter/material.dart';
import 'package:sampleproject/createemployee.dart';

class EmployeeList extends StatefulWidget {
  @override
  _EmployeeListState createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
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
                      "DETAILS",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey[200]),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        ///Text
                        Text(
                          "EMPLOYEE",
                          style: TextStyle(
                            fontSize: 40,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800],
                          ),
                        ),

                        Spacer(),

                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(_createRoute());
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          ///Change appearance of Completed Task
                          ///Say index 1 is completed
                          return Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey[100]),
                                color: index == 0
                                    ? Colors.purple[400]
                                    : Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///Show completed check
                                ///Task Title
                                SizedBox(
                                  height: 16,
                                ),

                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Employee Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 23,
                                              color: index == 0
                                                  ? Colors.white
                                                  : Colors.grey[800]),
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 16,
                          color: Colors.transparent,
                        ),
                        itemCount: 6,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CreateEmployee(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
